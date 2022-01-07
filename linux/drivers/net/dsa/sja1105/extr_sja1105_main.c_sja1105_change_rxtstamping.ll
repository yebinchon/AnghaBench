; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_change_rxtstamping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_change_rxtstamping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { %struct.sja1105_general_params_entry* }
%struct.sja1105_general_params_entry = type { i32, i32 }

@BLK_IDX_GENERAL_PARAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32)* @sja1105_change_rxtstamping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_change_rxtstamping(%struct.sja1105_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sja1105_general_params_entry*, align 8
  %7 = alloca %struct.sja1105_table*, align 8
  %8 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %10 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %13 = load i64, i64* @BLK_IDX_GENERAL_PARAMS, align 8
  %14 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %12, i64 %13
  store %struct.sja1105_table* %14, %struct.sja1105_table** %7, align 8
  %15 = load %struct.sja1105_table*, %struct.sja1105_table** %7, align 8
  %16 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %15, i32 0, i32 0
  %17 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %16, align 8
  store %struct.sja1105_general_params_entry* %17, %struct.sja1105_general_params_entry** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %6, align 8
  %20 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %6, align 8
  %23 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @sja1105_init_avb_params(%struct.sja1105_private* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %2
  %32 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %33 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %39 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree_skb(i32* %41)
  %43 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %44 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %37, %31
  %47 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %48 = call i32 @sja1105_static_config_reload(%struct.sja1105_private* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %29
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @sja1105_init_avb_params(%struct.sja1105_private*, i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @sja1105_static_config_reload(%struct.sja1105_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
