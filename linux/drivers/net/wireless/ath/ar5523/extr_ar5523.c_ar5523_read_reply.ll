; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_read_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_read_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }
%struct.ar5523_cmd_hdr = type { i32, i32 }
%struct.ar5523_tx_cmd = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Code = %d len = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"olen to small %d < %d\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5523*, %struct.ar5523_cmd_hdr*, %struct.ar5523_tx_cmd*)* @ar5523_read_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_read_reply(%struct.ar5523* %0, %struct.ar5523_cmd_hdr* %1, %struct.ar5523_tx_cmd* %2) #0 {
  %4 = alloca %struct.ar5523*, align 8
  %5 = alloca %struct.ar5523_cmd_hdr*, align 8
  %6 = alloca %struct.ar5523_tx_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ar5523* %0, %struct.ar5523** %4, align 8
  store %struct.ar5523_cmd_hdr* %1, %struct.ar5523_cmd_hdr** %5, align 8
  store %struct.ar5523_tx_cmd* %2, %struct.ar5523_tx_cmd** %6, align 8
  %10 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.ar5523_cmd_hdr, %struct.ar5523_cmd_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be32_to_cpu(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @WARN_ON(i32 1)
  br label %89

21:                                               ; preds = %3
  %22 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %23 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.ar5523_cmd_hdr, %struct.ar5523_cmd_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  %27 = and i32 %26, 255
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ar5523_dbg(%struct.ar5523* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.ar5523_cmd_hdr, %struct.ar5523_cmd_hdr* %30, i64 1
  %32 = bitcast %struct.ar5523_cmd_hdr* %31 to i32*
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp uge i64 %34, 4
  br i1 %35, label %36, label %49

36:                                               ; preds = %21
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 4, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %36
  br label %50

49:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %50
  %56 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %63 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ar5523_err(%struct.ar5523* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* @EOVERFLOW, align 4
  %71 = sub nsw i32 0, %70
  %72 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %87

74:                                               ; preds = %55
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %77 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %79 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @memcpy(i64 %80, i32* %82, i32 %83)
  %85 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %85, i32 0, i32 2
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %74, %61
  br label %88

88:                                               ; preds = %87, %50
  br label %89

89:                                               ; preds = %88, %19
  %90 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %6, align 8
  %91 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %90, i32 0, i32 1
  %92 = call i32 @complete(i32* %91)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*, i32, i32) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
