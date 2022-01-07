; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_send_fw_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_send_fw_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i32, i32, i32, %struct.TYPE_5__*, i32, %struct.fwdata*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.fwdata = type { %struct.TYPE_6__, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

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
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %14 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %19 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %24 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %29 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %33 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %37 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %36, i32 0, i32 0
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %40 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = call i32 @memcpy(%struct.TYPE_6__* %37, i32* %43, i32 4)
  %45 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %46 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %49 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %51 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %57 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %61 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %66 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = call i32 @memcpy(%struct.TYPE_6__* %58, i32* %64, i32 %69)
  %71 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %72 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %76 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %82 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = call i32 @cpu_to_le32(i32 %84)
  %86 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %87 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %89 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %94 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %98 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %99 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %98, i32 0, i32 5
  %100 = load %struct.fwdata*, %struct.fwdata** %99, align 8
  %101 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %102 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = sext i32 %105 to i64
  %107 = add i64 24, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @usb_tx_block(%struct.if_usb_card* %97, %struct.fwdata* %100, i32 %108)
  %110 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %111 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FW_HAS_DATA_TO_RECV, align 4
  %115 = call i32 @cpu_to_le32(i32 %114)
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %27
  %118 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %119 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %118, i32 0, i32 3
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %124 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %123, i32 0, i32 3
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %128 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %131 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %132)
  br label %156

134:                                              ; preds = %27
  %135 = load %struct.fwdata*, %struct.fwdata** %3, align 8
  %136 = getelementptr inbounds %struct.fwdata, %struct.fwdata* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FW_HAS_LAST_BLOCK, align 4
  %140 = call i32 @cpu_to_le32(i32 %139)
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %134
  %143 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %144 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %143, i32 0, i32 3
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %148 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %149 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %148, i32 0, i32 3
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %153 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %154 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %153, i32 0, i32 2
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %142, %134
  br label %156

156:                                              ; preds = %155, %117
  %157 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %158 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %157, i32 0, i32 3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %162 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  ret i32 0
}

declare dso_local i32 @lbs_deb_usb2(i32*, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_tx_block(%struct.if_usb_card*, %struct.fwdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
