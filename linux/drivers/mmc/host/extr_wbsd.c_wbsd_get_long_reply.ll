; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_get_long_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_get_long_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32 }
%struct.mmc_command = type { i32*, i32 }

@WBSD_IDX_RSPLEN = common dso_local global i64 0, align 8
@WBSD_RSP_LONG = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@WBSD_IDX_RESP1 = common dso_local global i64 0, align 8
@WBSD_IDX_RESP2 = common dso_local global i64 0, align 8
@WBSD_IDX_RESP3 = common dso_local global i64 0, align 8
@WBSD_IDX_RESP4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*, %struct.mmc_command*)* @wbsd_get_long_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_get_long_reply(%struct.wbsd_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %6 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %7 = load i64, i64* @WBSD_IDX_RSPLEN, align 8
  %8 = call i32 @wbsd_read_index(%struct.wbsd_host* %6, i64 %7)
  %9 = load i32, i32* @WBSD_RSP_LONG, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @EILSEQ, align 4
  %13 = sub nsw i32 0, %12
  %14 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %86

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %83, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %86

20:                                               ; preds = %17
  %21 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %22 = load i64, i64* @WBSD_IDX_RESP1, align 8
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @wbsd_read_index(%struct.wbsd_host* %21, i64 %26)
  %28 = shl i32 %27, 24
  %29 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %36 = load i64, i64* @WBSD_IDX_RESP2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = call i32 @wbsd_read_index(%struct.wbsd_host* %35, i64 %40)
  %42 = shl i32 %41, 16
  %43 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %42
  store i32 %50, i32* %48, align 4
  %51 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %52 = load i64, i64* @WBSD_IDX_RESP3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %52, %55
  %57 = call i32 @wbsd_read_index(%struct.wbsd_host* %51, i64 %56)
  %58 = shl i32 %57, 8
  %59 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %58
  store i32 %66, i32* %64, align 4
  %67 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %68 = load i64, i64* @WBSD_IDX_RESP4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = call i32 @wbsd_read_index(%struct.wbsd_host* %67, i64 %72)
  %74 = shl i32 %73, 0
  %75 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %74
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %20
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %17

86:                                               ; preds = %11, %17
  ret void
}

declare dso_local i32 @wbsd_read_index(%struct.wbsd_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
