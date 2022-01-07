; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32, %struct.ar5523_tx_cmd }
%struct.ar5523_tx_cmd = type { i32, i32, i32, i32*, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ar5523_cmd_hdr = type { i8*, i32, i8*, i8* }

@AR5523_CMD_ID = common dso_local global i32 0, align 4
@AR5523_CMD_FLAG_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"do cmd %02x\0A\00", align 1
@ar5523_cmd_tx_cb = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not send command 0x%x, error=%d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"timeout waiting for command %02x reply\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*, i32, i8*, i32, i8*, i32, i32)* @ar5523_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_cmd(%struct.ar5523* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ar5523*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ar5523_cmd_hdr*, align 8
  %17 = alloca %struct.ar5523_tx_cmd*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %21 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %20, i32 0, i32 1
  store %struct.ar5523_tx_cmd* %21, %struct.ar5523_tx_cmd** %17, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 32, %23
  %25 = add i64 %24, 3
  %26 = and i64 %25, -4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %18, align 4
  %28 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %29 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ar5523_cmd_hdr*
  store %struct.ar5523_cmd_hdr* %31, %struct.ar5523_cmd_hdr** %16, align 8
  %32 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %16, align 8
  %33 = call i32 @memset(%struct.ar5523_cmd_hdr* %32, i32 0, i32 32)
  %34 = load i32, i32* %18, align 4
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %16, align 8
  %37 = getelementptr inbounds %struct.ar5523_cmd_hdr, %struct.ar5523_cmd_hdr* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %16, align 8
  %41 = getelementptr inbounds %struct.ar5523_cmd_hdr, %struct.ar5523_cmd_hdr* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @AR5523_CMD_ID, align 4
  %43 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %16, align 8
  %44 = getelementptr inbounds %struct.ar5523_cmd_hdr, %struct.ar5523_cmd_hdr* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @AR5523_CMD_FLAG_MAGIC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %7
  %50 = call i8* @cpu_to_be32(i32 16777216)
  %51 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %16, align 8
  %52 = getelementptr inbounds %struct.ar5523_cmd_hdr, %struct.ar5523_cmd_hdr* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %7
  %54 = load %struct.ar5523_cmd_hdr*, %struct.ar5523_cmd_hdr** %16, align 8
  %55 = getelementptr inbounds %struct.ar5523_cmd_hdr, %struct.ar5523_cmd_hdr* %54, i64 1
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @memcpy(%struct.ar5523_cmd_hdr* %55, i8* %56, i32 %57)
  %59 = load i8*, i8** %13, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %62 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %65 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %68 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @ar5523_dbg(%struct.ar5523* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %73 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %72, i32 0, i32 5
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %76 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %79 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ar5523_cmd_tx_pipe(i32 %80)
  %82 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %83 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @ar5523_cmd_tx_cb, align 4
  %87 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %88 = call i32 @usb_fill_bulk_urb(%struct.TYPE_3__* %74, i32 %77, i32 %81, i64 %84, i32 %85, i32 %86, %struct.ar5523_tx_cmd* %87)
  %89 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %90 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %91 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %90, i32 0, i32 5
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %97 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %96, i32 0, i32 5
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32 @usb_submit_urb(%struct.TYPE_3__* %98, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %53
  %104 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %19, align 4
  %107 = call i32 (%struct.ar5523*, i8*, i32, ...) @ar5523_err(%struct.ar5523* %104, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* %8, align 4
  br label %130

109:                                              ; preds = %53
  %110 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %111 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %110, i32 0, i32 4
  %112 = load i32, i32* @HZ, align 4
  %113 = mul nsw i32 2, %112
  %114 = call i32 @wait_for_completion_timeout(i32* %111, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %109
  %117 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %118 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %117, i32 0, i32 3
  store i32* null, i32** %118, align 8
  %119 = load %struct.ar5523*, %struct.ar5523** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 (%struct.ar5523*, i8*, i32, ...) @ar5523_err(%struct.ar5523* %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @ETIMEDOUT, align 4
  %123 = sub nsw i32 0, %122
  %124 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %125 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %116, %109
  %127 = load %struct.ar5523_tx_cmd*, %struct.ar5523_tx_cmd** %17, align 8
  %128 = getelementptr inbounds %struct.ar5523_tx_cmd, %struct.ar5523_tx_cmd* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %126, %103
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @memset(%struct.ar5523_cmd_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(%struct.ar5523_cmd_hdr*, i8*, i32) #1

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_3__*, i32, i32, i64, i32, i32, %struct.ar5523_tx_cmd*) #1

declare dso_local i32 @ar5523_cmd_tx_pipe(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*, i32, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
