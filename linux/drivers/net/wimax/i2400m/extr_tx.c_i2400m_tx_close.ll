; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { %struct.i2400m_msg_hdr*, i32, i32, i32, i32 }
%struct.i2400m_msg_hdr = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@I2400M_TX_SKIP = common dso_local global i32 0, align 4
@pld = common dso_local global i32 0, align 4
@I2400M_PL_ALIGN = common dso_local global i32 0, align 4
@I2400M_TX_PLD_SIZE = common dso_local global i32 0, align 4
@TAIL_FULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [135 x i8] c"SW BUG! Possible data leakage from memory the device should not read for padding - size %lu aligned_size %zu tx_buf %p in %zu out %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*)* @i2400m_tx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_tx_close(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2400m_msg_hdr*, align 8
  %5 = alloca %struct.i2400m_msg_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %12 = call %struct.device* @i2400m_dev(%struct.i2400m* %11)
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 0
  %15 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %14, align 8
  store %struct.i2400m_msg_hdr* %15, %struct.i2400m_msg_hdr** %4, align 8
  %16 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %17 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @I2400M_TX_SKIP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %150

23:                                               ; preds = %1
  %24 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %25 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* @I2400M_TX_SKIP, align 4
  %32 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %33 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %150

36:                                               ; preds = %23
  %37 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %38 = load i32, i32* @pld, align 4
  %39 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = call i64 @struct_size(%struct.i2400m_msg_hdr* %37, i32 %38, i32 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @I2400M_PL_ALIGN, align 4
  %46 = call i64 @ALIGN(i64 %44, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i32, i32* @I2400M_TX_PLD_SIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %53 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %55 = bitcast %struct.i2400m_msg_hdr* %54 to i8*
  %56 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %57 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %55, i64 %59
  %61 = bitcast i8* %60 to %struct.i2400m_msg_hdr*
  store %struct.i2400m_msg_hdr* %61, %struct.i2400m_msg_hdr** %5, align 8
  %62 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %63 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @memmove(%struct.i2400m_msg_hdr* %62, %struct.i2400m_msg_hdr* %63, i64 %64)
  %66 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %67 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %70 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %74 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %78 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ALIGN(i64 %76, i32 %79)
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %83 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 %81, %85
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ugt i64 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %36
  %90 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i8* @i2400m_tx_fifo_push(%struct.i2400m* %90, i64 %91, i32 0, i32 0)
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** @TAIL_FULL, align 8
  %98 = icmp eq i8* %96, %97
  br label %99

99:                                               ; preds = %95, %89
  %100 = phi i1 [ true, %89 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = call i64 @WARN_ON(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %3, align 8
  %106 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %107 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %112 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %115 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %118 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str, i64 0, i64 0), i64 %109, i64 %110, i32 %113, i32 %116, i32 %119)
  br label %125

121:                                              ; preds = %99
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i32 @memset(i8* %122, i32 173, i64 %123)
  br label %125

125:                                              ; preds = %121, %104
  br label %126

126:                                              ; preds = %125, %36
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @cpu_to_le16(i64 %127)
  %129 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %130 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %133 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %139 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %5, align 8
  %140 = icmp ne %struct.i2400m_msg_hdr* %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %126
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %4, align 8
  %144 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  br label %149

149:                                              ; preds = %141, %126
  br label %150

150:                                              ; preds = %149, %30, %22
  %151 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %152 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %151, i32 0, i32 0
  store %struct.i2400m_msg_hdr* null, %struct.i2400m_msg_hdr** %152, align 8
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @struct_size(%struct.i2400m_msg_hdr*, i32, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @memmove(%struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr*, i64) #1

declare dso_local i8* @i2400m_tx_fifo_push(%struct.i2400m*, i64, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
