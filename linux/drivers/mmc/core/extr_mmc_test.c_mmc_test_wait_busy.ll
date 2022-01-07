; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }

@MMC_SEND_STATUS = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_CAP_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: Warning: Host did not wait for busy state to end.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_wait_busy(%struct.mmc_test_card* %0) #0 {
  %2 = alloca %struct.mmc_test_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_command, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %2, align 8
  %6 = bitcast %struct.mmc_command* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 12, i1 false)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %58, %1
  %8 = call i32 @memset(%struct.mmc_command* %5, i32 0, i32 12)
  %9 = load i32, i32* @MMC_SEND_STATUS, align 4
  %10 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load %struct.mmc_test_card*, %struct.mmc_test_card** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 %15, 16
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MMC_RSP_R1, align 4
  %19 = load i32, i32* @MMC_CMD_AC, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.mmc_test_card*, %struct.mmc_test_card** %2, align 8
  %23 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @mmc_wait_for_cmd(%struct.TYPE_5__* %26, %struct.mmc_command* %5, i32 0)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %61

31:                                               ; preds = %7
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %31
  %35 = call i64 @mmc_test_busy(%struct.mmc_command* %5)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  %38 = load %struct.mmc_test_card*, %struct.mmc_test_card** %2, align 8
  %39 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MMC_CAP_WAIT_WHILE_BUSY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load %struct.mmc_test_card*, %struct.mmc_test_card** %2, align 8
  %50 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @mmc_hostname(%struct.TYPE_5__* %53)
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %37
  br label %57

57:                                               ; preds = %56, %34, %31
  br label %58

58:                                               ; preds = %57
  %59 = call i64 @mmc_test_busy(%struct.mmc_command* %5)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %7, label %61

61:                                               ; preds = %58, %30
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #2

declare dso_local i32 @mmc_wait_for_cmd(%struct.TYPE_5__*, %struct.mmc_command*, i32) #2

declare dso_local i64 @mmc_test_busy(%struct.mmc_command*) #2

declare dso_local i32 @pr_info(i8*, i32) #2

declare dso_local i32 @mmc_hostname(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
