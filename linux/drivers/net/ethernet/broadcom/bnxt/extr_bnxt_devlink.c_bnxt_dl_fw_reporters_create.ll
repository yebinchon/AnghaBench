; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_fw_reporters_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_devlink.c_bnxt_dl_fw_reporters_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i32*, i32*, i32* }

@bnxt_dl_fw_reporter_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to create FW health reporter, rc = %ld\0A\00", align 1
@bnxt_dl_fw_reset_reporter_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to create FW fatal health reporter, rc = %ld\0A\00", align 1
@bnxt_dl_fw_fatal_reporter_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_dl_fw_reporters_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_dl_fw_reporters_create(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_fw_health*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %4 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %5 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %4, i32 0, i32 2
  %6 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  store %struct.bnxt_fw_health* %6, %struct.bnxt_fw_health** %3, align 8
  %7 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %8 = icmp ne %struct.bnxt_fw_health* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %85

10:                                               ; preds = %1
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %15 = call i8* @devlink_health_reporter_create(i32 %13, i32* @bnxt_dl_fw_reporter_ops, i32 0, i32 0, %struct.bnxt* %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %10
  %25 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @PTR_ERR(i32* %30)
  %32 = call i32 @netdev_warn(i32 %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %34 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %24, %10
  %36 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %40 = call i8* @devlink_health_reporter_create(i32 %38, i32* @bnxt_dl_fw_reset_reporter_ops, i32 0, i32 1, %struct.bnxt* %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %43 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %45 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %35
  %50 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %51 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %54 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  %57 = call i32 @netdev_warn(i32 %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %59 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %49, %35
  %61 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %62 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %65 = call i8* @devlink_health_reporter_create(i32 %63, i32* @bnxt_dl_fw_fatal_reporter_ops, i32 0, i32 1, %struct.bnxt* %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %68 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %70 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @IS_ERR(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %60
  %75 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %76 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %79 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @PTR_ERR(i32* %80)
  %82 = call i32 @netdev_warn(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %84 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %9, %74, %60
  ret void
}

declare dso_local i8* @devlink_health_reporter_create(i32, i32*, i32, i32, %struct.bnxt*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
