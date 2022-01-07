; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_add_multicast_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_add_multicast_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ehea_mc_list = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@H_REG_BCMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed registering mcast MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_port*, i32*)* @ehea_add_multicast_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_add_multicast_entry(%struct.ehea_port* %0, i32* %1) #0 {
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ehea_mc_list*, align 8
  %6 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.ehea_mc_list* @kzalloc(i32 8, i32 %7)
  store %struct.ehea_mc_list* %8, %struct.ehea_mc_list** %5, align 8
  %9 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %10 = icmp ne %struct.ehea_mc_list* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %14 = getelementptr inbounds %struct.ehea_mc_list, %struct.ehea_mc_list* %13, i32 0, i32 0
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %17 = getelementptr inbounds %struct.ehea_mc_list, %struct.ehea_mc_list* %16, i32 0, i32 1
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @ETH_ALEN, align 4
  %20 = call i32 @memcpy(i32* %17, i32* %18, i32 %19)
  %21 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %22 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %23 = getelementptr inbounds %struct.ehea_mc_list, %struct.ehea_mc_list* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @H_REG_BCMC, align 4
  %26 = call i32 @ehea_multicast_reg_helper(%struct.ehea_port* %21, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %12
  %30 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %31 = getelementptr inbounds %struct.ehea_mc_list, %struct.ehea_mc_list* %30, i32 0, i32 0
  %32 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %33 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @list_add(i32* %31, i32* %35)
  br label %41

37:                                               ; preds = %12
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.ehea_mc_list*, %struct.ehea_mc_list** %5, align 8
  %40 = call i32 @kfree(%struct.ehea_mc_list* %39)
  br label %41

41:                                               ; preds = %11, %37, %29
  ret void
}

declare dso_local %struct.ehea_mc_list* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ehea_multicast_reg_helper(%struct.ehea_port*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.ehea_mc_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
