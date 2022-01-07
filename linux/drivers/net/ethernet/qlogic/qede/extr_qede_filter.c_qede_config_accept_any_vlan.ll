; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_config_accept_any_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_config_accept_any_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.qed_update_vport_params*)* }
%struct.qed_update_vport_params = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to %s accept-any-vlan\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s accept-any-vlan\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, i32)* @qede_config_accept_any_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_config_accept_any_vlan(%struct.qede_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_update_vport_params*, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %9 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = call %struct.qed_update_vport_params* @vzalloc(i32 16)
  store %struct.qed_update_vport_params* %15, %struct.qed_update_vport_params** %6, align 8
  %16 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %17 = icmp ne %struct.qed_update_vport_params* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %14
  %22 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %23 = getelementptr inbounds %struct.qed_update_vport_params, %struct.qed_update_vport_params* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %26 = getelementptr inbounds %struct.qed_update_vport_params, %struct.qed_update_vport_params* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %28 = getelementptr inbounds %struct.qed_update_vport_params, %struct.qed_update_vport_params* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %30 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.qed_update_vport_params*)*, i32 (i32, %struct.qed_update_vport_params*)** %32, align 8
  %34 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %35 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %38 = call i32 %33(i32 %36, %struct.qed_update_vport_params* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %21
  %42 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 @DP_ERR(%struct.qede_dev* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %58

48:                                               ; preds = %21
  %49 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %54 = call i32 @DP_INFO(%struct.qede_dev* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %57 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %60 = call i32 @vfree(%struct.qed_update_vport_params* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %18, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.qed_update_vport_params* @vzalloc(i32) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, i8*) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*, i8*) #1

declare dso_local i32 @vfree(%struct.qed_update_vport_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
