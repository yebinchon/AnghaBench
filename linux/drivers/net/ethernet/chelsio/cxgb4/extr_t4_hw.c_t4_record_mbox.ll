; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_record_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_record_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mbox_cmd_log* }
%struct.mbox_cmd_log = type { i64, i64, i32 }
%struct.mbox_cmd = type { i32, i32, i64, i32, i64* }

@MBOX_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i32, i32, i32)* @t4_record_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t4_record_mbox(%struct.adapter* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbox_cmd_log*, align 8
  %12 = alloca %struct.mbox_cmd*, align 8
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %15, align 8
  store %struct.mbox_cmd_log* %16, %struct.mbox_cmd_log** %11, align 8
  %17 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %18 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %19 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = trunc i64 %20 to i32
  %23 = call %struct.mbox_cmd* @mbox_cmd_log_entry(%struct.mbox_cmd_log* %17, i32 %22)
  store %struct.mbox_cmd* %23, %struct.mbox_cmd** %12, align 8
  %24 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %25 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %28 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %33 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %5
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = udiv i32 %37, 8
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @be64_to_cpu(i32 %45)
  %47 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %48 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %47, i32 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %46, i64* %52, align 8
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %35

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %62, %56
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @MBOX_LEN, align 4
  %60 = sdiv i32 %59, 8
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %64 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %63, i32 0, i32 4
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  store i64 0, i64* %69, align 8
  br label %57

70:                                               ; preds = %57
  %71 = load i32, i32* @jiffies, align 4
  %72 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %73 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.mbox_cmd_log*, %struct.mbox_cmd_log** %11, align 8
  %75 = getelementptr inbounds %struct.mbox_cmd_log, %struct.mbox_cmd_log* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = sext i32 %76 to i64
  %79 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %80 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %83 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.mbox_cmd*, %struct.mbox_cmd** %12, align 8
  %86 = getelementptr inbounds %struct.mbox_cmd, %struct.mbox_cmd* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  ret void
}

declare dso_local %struct.mbox_cmd* @mbox_cmd_log_entry(%struct.mbox_cmd_log*, i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
