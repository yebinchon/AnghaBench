; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_spec_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_flow_spec_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.flow_action = type { i32 }
%struct.qede_arfs_tuple = type { i64 }

@QEDE_RFS_MAX_FLTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Location out-of-bounds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Location already in use\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"flow_spec would require filtering mode %08x, but %08x is configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.flow_action*, %struct.qede_arfs_tuple*, i64)* @qede_flow_spec_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_flow_spec_validate(%struct.qede_dev* %0, %struct.flow_action* %1, %struct.qede_arfs_tuple* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca %struct.flow_action*, align 8
  %8 = alloca %struct.qede_arfs_tuple*, align 8
  %9 = alloca i64, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %6, align 8
  store %struct.flow_action* %1, %struct.flow_action** %7, align 8
  store %struct.qede_arfs_tuple* %2, %struct.qede_arfs_tuple** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QEDE_RFS_MAX_FLTR, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %15 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %21 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @test_bit(i64 %19, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %29 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %71

32:                                               ; preds = %18
  %33 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %34 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %41 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %8, align 8
  %46 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %39
  %50 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %51 = load %struct.qede_arfs_tuple*, %struct.qede_arfs_tuple** %8, align 8
  %52 = getelementptr inbounds %struct.qede_arfs_tuple, %struct.qede_arfs_tuple* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %55 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %50, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %53, i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %71

62:                                               ; preds = %39, %32
  %63 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %64 = load %struct.flow_action*, %struct.flow_action** %7, align 8
  %65 = call i64 @qede_parse_actions(%struct.qede_dev* %63, %struct.flow_action* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %67, %49, %27, %13
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*, ...) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i64 @qede_parse_actions(%struct.qede_dev*, %struct.flow_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
