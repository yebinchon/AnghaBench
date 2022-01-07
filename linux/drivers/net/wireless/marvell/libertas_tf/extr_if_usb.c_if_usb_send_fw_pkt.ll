; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_send_fw_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_if_usb.c_if_usb_send_fw_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i32, i32, i32, %struct.TYPE_5__*, i32, %struct.fwdata*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.fwdata = type { %struct.TYPE_6__, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@LBTF_DEB_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"totalbytes = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Data length = %d\0A\00", align 1
@FW_HAS_DATA_TO_RECV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"There are data to follow\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"seqnum = %d totalbytes = %d\0A\00", align 1
@FW_HAS_LAST_BLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Host has finished FW downloading\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Downloading FW JUMP BLOCK\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Firmware download done; size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*)* @if_usb_send_fw_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_send_fw_pkt(%struct.if_usb_card* %0) #0 {
  %2 = alloca %struct.if_usb_card*, align 8
  %3 = alloca %struct.fwdata*, align 8
  %4 = alloca i32*, align 8
  store %struct.if_usb_card* %0, %struct.if_usb_card** %2, align 8
  %5 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %6 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %5, i32 0, i32 5
  %7 = load %struct.fwdata*, %struct.fwdata** %6, align 8
  store %struct.fwdata* %7, %struct.fwdata** %3, align 8
  %8 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %9 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %8, i32 0, i32 7
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load i32, i32* @LBTF_DEB_FW, align 4
  %15 = call i32 @lbtf_deb_enter(i32 %14)
  %16 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %17 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %25 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %27 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %20, %1
  %31 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %32 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %36 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %40 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %39, i32 0, i32 0
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %43 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = call i32 @memcpy(%struct.TYPE_6__* %40, i32* %46, i32 4)
  %48 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %49 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %52 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %54 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 8
  %59 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %60 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %64 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %69 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = call i32 @memcpy(%struct.TYPE_6__* %61, i32* %67, i32 %72)
  %74 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %75 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %74, i32 0, i32 3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %79 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %85 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = call i32 @cpu_to_le32(i32 %87)
  %89 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %90 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %92 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %97 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %101 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %102 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %101, i32 0, i32 5
  %103 = load %struct.fwdata*, %struct.fwdata** %102, align 8
  %104 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %105 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32_to_cpu(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = add i64 24, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @usb_tx_block(%struct.if_usb_card* %100, %struct.fwdata* %103, i32 %111, i32 0)
  %113 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %114 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @FW_HAS_DATA_TO_RECV, align 4
  %118 = call i32 @cpu_to_le32(i32 %117)
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %30
  %121 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %122 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %127 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %126, i32 0, i32 3
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %131 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %134 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %132, i32 %135)
  br label %159

137:                                              ; preds = %30
  %138 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %139 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @FW_HAS_LAST_BLOCK, align 4
  %143 = call i32 @cpu_to_le32(i32 %142)
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %137
  %146 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %147 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %146, i32 0, i32 3
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %151 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %152 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %151, i32 0, i32 3
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %157 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  br label %158

158:                                              ; preds = %145, %137
  br label %159

159:                                              ; preds = %158, %120
  %160 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %161 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %160, i32 0, i32 3
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %165 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32*, i8*, ...) @lbtf_deb_usb2(i32* %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @LBTF_DEB_FW, align 4
  %169 = call i32 @lbtf_deb_leave(i32 %168)
  ret i32 0
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @lbtf_deb_usb2(i32*, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_tx_block(%struct.if_usb_card*, %struct.fwdata*, i32, i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
