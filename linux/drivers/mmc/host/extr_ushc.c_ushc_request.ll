; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_ushc.c_ushc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_9__*, %struct.mmc_data* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.mmc_data = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ushc_data = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_7__*, %struct.mmc_request*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i8*, i8* }

@DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@data_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @ushc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ushc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.ushc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mmc_data*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.ushc_data* @mmc_priv(%struct.mmc_host* %10)
  store %struct.ushc_data* %11, %struct.ushc_data** %5, align 8
  %12 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %13 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %12, i32 0, i32 3
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @DISCONNECTED, align 4
  %17 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %18 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %17, i32 0, i32 8
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %169

24:                                               ; preds = %2
  %25 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MMC_RSP_136, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %169

36:                                               ; preds = %24
  %37 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 1
  %39 = load %struct.mmc_data*, %struct.mmc_data** %38, align 8
  %40 = icmp ne %struct.mmc_data* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %43 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 6000000
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %169

49:                                               ; preds = %41, %36
  %50 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %51 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %52 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %51, i32 0, i32 7
  store %struct.mmc_request* %50, %struct.mmc_request** %52, align 8
  %53 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %60 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %59, i32 0, i32 6
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i8* %58, i8** %62, align 8
  %63 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %63, i32 0, i32 1
  %65 = load %struct.mmc_data*, %struct.mmc_data** %64, align 8
  %66 = icmp ne %struct.mmc_data* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %49
  %68 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %68, i32 0, i32 1
  %70 = load %struct.mmc_data*, %struct.mmc_data** %69, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @cpu_to_le16(i32 %72)
  %74 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %75 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %74, i32 0, i32 6
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i8* %73, i8** %77, align 8
  br label %83

78:                                               ; preds = %49
  %79 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %80 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %79, i32 0, i32 6
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i8* null, i8** %82, align 8
  br label %83

83:                                               ; preds = %78, %67
  %84 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cpu_to_le32(i32 %88)
  %90 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %91 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %90, i32 0, i32 6
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  %94 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %95 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load i32, i32* @GFP_ATOMIC, align 4
  %98 = call i32 @usb_submit_urb(%struct.TYPE_10__* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %83
  br label %169

102:                                              ; preds = %83
  %103 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %104 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %103, i32 0, i32 1
  %105 = load %struct.mmc_data*, %struct.mmc_data** %104, align 8
  %106 = icmp ne %struct.mmc_data* %105, null
  br i1 %106, label %107, label %163

107:                                              ; preds = %102
  %108 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %109 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %108, i32 0, i32 1
  %110 = load %struct.mmc_data*, %struct.mmc_data** %109, align 8
  store %struct.mmc_data* %110, %struct.mmc_data** %8, align 8
  %111 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %112 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MMC_DATA_READ, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %107
  %118 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %119 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @usb_rcvbulkpipe(i32 %120, i32 6)
  store i32 %121, i32* %9, align 4
  br label %127

122:                                              ; preds = %107
  %123 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %124 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @usb_sndbulkpipe(i32 %125, i32 2)
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %129 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %132 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %136 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @data_callback, align 4
  %141 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %142 = call i32 @usb_fill_bulk_urb(%struct.TYPE_10__* %130, i32 %133, i32 %134, i32* null, i32 %139, i32 %140, %struct.ushc_data* %141)
  %143 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %144 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %148 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %151 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  store %struct.TYPE_8__* %149, %struct.TYPE_8__** %153, align 8
  %154 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %155 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = load i32, i32* @GFP_ATOMIC, align 4
  %158 = call i32 @usb_submit_urb(%struct.TYPE_10__* %156, i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %127
  br label %169

162:                                              ; preds = %127
  br label %163

163:                                              ; preds = %162, %102
  %164 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %165 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %164, i32 0, i32 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load i32, i32* @GFP_ATOMIC, align 4
  %168 = call i32 @usb_submit_urb(%struct.TYPE_10__* %166, i32 %167)
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %163, %161, %101, %46, %33, %21
  %170 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %171 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %170, i32 0, i32 3
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %169
  %177 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %178 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %177, i32 0, i32 2
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = call i32 @usb_unlink_urb(%struct.TYPE_10__* %179)
  %181 = load %struct.ushc_data*, %struct.ushc_data** %5, align 8
  %182 = getelementptr inbounds %struct.ushc_data, %struct.ushc_data* %181, i32 0, i32 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = call i32 @usb_unlink_urb(%struct.TYPE_10__* %183)
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %187 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %186, i32 0, i32 0
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store i32 %185, i32* %189, align 4
  %190 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %191 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %192 = call i32 @mmc_request_done(%struct.mmc_host* %190, %struct.mmc_request* %191)
  br label %193

193:                                              ; preds = %176, %169
  ret void
}

declare dso_local %struct.ushc_data* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_10__*, i32, i32, i32*, i32, i32, %struct.ushc_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_10__*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
