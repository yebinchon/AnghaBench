; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_card_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_card_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"invalid packet size (%d bytes) from firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IF_SDIO_IO_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"packet of type %d and size %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"packet fragment (%d > %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"packet fragment (%d < %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"invalid type (%d) from firmware\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"problem fetching packet from firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*)* @if_sdio_card_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_card_to_host(%struct.if_sdio_card* %0) #0 {
  %2 = alloca %struct.if_sdio_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %2, align 8
  %7 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %8 = call i32 @if_sdio_read_rx_len(%struct.if_sdio_card* %7, i32* %3)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %139

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %139

20:                                               ; preds = %12
  %21 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %22 = load i32, i32* @IF_SDIO_IO_RDY, align 4
  %23 = call i32 @if_sdio_wait_status(%struct.if_sdio_card* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %139

27:                                               ; preds = %20
  %28 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %29 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @sdio_align_size(i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %34 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %37 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %40 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @sdio_readsb(i32 %35, i32* %38, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %139

47:                                               ; preds = %27
  %48 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %49 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %54 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %52, %58
  store i32 %59, i32* %6, align 4
  %60 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %61 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %66 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %64, %70
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %47
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %139

84:                                               ; preds = %47
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load i32, i32* %5, align 4
  switch i32 %93, label %133 [
    i32 130, label %94
    i32 129, label %107
    i32 128, label %120
  ]

94:                                               ; preds = %92
  %95 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %96 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %97 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 4
  %102 = call i32 @if_sdio_handle_cmd(%struct.if_sdio_card* %95, i32* %99, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %139

106:                                              ; preds = %94
  br label %138

107:                                              ; preds = %92
  %108 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %109 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %110 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 4
  %115 = call i32 @if_sdio_handle_data(%struct.if_sdio_card* %108, i32* %112, i32 %114)
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %139

119:                                              ; preds = %107
  br label %138

120:                                              ; preds = %92
  %121 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %122 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %123 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 %126, 4
  %128 = call i32 @if_sdio_handle_event(%struct.if_sdio_card* %121, i32* %125, i32 %127)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %139

132:                                              ; preds = %120
  br label %138

133:                                              ; preds = %92
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (i8*, i32, ...) @lbs_deb_sdio(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %139

138:                                              ; preds = %132, %119, %106
  br label %139

139:                                              ; preds = %138, %133, %131, %118, %105, %78, %46, %26, %15, %11
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %139
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @if_sdio_read_rx_len(%struct.if_sdio_card*, i32*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32, ...) #1

declare dso_local i32 @if_sdio_wait_status(%struct.if_sdio_card*, i32) #1

declare dso_local i32 @sdio_align_size(i32, i32) #1

declare dso_local i32 @sdio_readsb(i32, i32*, i32, i32) #1

declare dso_local i32 @if_sdio_handle_cmd(%struct.if_sdio_card*, i32*, i32) #1

declare dso_local i32 @if_sdio_handle_data(%struct.if_sdio_card*, i32*, i32) #1

declare dso_local i32 @if_sdio_handle_event(%struct.if_sdio_card*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
