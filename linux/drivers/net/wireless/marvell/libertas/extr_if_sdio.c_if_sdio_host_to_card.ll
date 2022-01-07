; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_host_to_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_host_to_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.if_sdio_card* }
%struct.if_sdio_card = type { i32, i32, i32, %struct.if_sdio_packet*, i32 }
%struct.if_sdio_packet = type { i32, i32*, %struct.if_sdio_packet* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DNLD_CMD_SENT = common dso_local global i32 0, align 4
@DNLD_DATA_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown packet type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32, i32*, i32)* @if_sdio_host_to_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_host_to_card(%struct.lbs_private* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.if_sdio_card*, align 8
  %11 = alloca %struct.if_sdio_packet*, align 8
  %12 = alloca %struct.if_sdio_packet*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 1
  %17 = load %struct.if_sdio_card*, %struct.if_sdio_card** %16, align 8
  store %struct.if_sdio_card* %17, %struct.if_sdio_card** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %19, 65508
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %132

24:                                               ; preds = %4
  %25 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %26 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i32 @sdio_align_size(i32 %27, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 24, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.if_sdio_packet* @kzalloc(i32 %34, i32 %35)
  store %struct.if_sdio_packet* %36, %struct.if_sdio_packet** %11, align 8
  %37 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %38 = icmp ne %struct.if_sdio_packet* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %132

42:                                               ; preds = %24
  %43 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %44 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %43, i32 0, i32 2
  store %struct.if_sdio_packet* null, %struct.if_sdio_packet** %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %47 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 4
  %50 = and i32 %49, 255
  %51 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %52 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %60 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %65 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %63, i32* %67, align 4
  %68 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %69 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 0, i32* %71, align 4
  %72 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %73 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @memcpy(i32* %75, i32* %76, i32 %77)
  %79 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %80 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %79, i32 0, i32 2
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %84 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %83, i32 0, i32 3
  %85 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %84, align 8
  %86 = icmp ne %struct.if_sdio_packet* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %42
  %88 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %89 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %90 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %89, i32 0, i32 3
  store %struct.if_sdio_packet* %88, %struct.if_sdio_packet** %90, align 8
  br label %108

91:                                               ; preds = %42
  %92 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %93 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %92, i32 0, i32 3
  %94 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %93, align 8
  store %struct.if_sdio_packet* %94, %struct.if_sdio_packet** %12, align 8
  br label %95

95:                                               ; preds = %100, %91
  %96 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %12, align 8
  %97 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %96, i32 0, i32 2
  %98 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %97, align 8
  %99 = icmp ne %struct.if_sdio_packet* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %12, align 8
  %102 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %101, i32 0, i32 2
  %103 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %102, align 8
  store %struct.if_sdio_packet* %103, %struct.if_sdio_packet** %12, align 8
  br label %95

104:                                              ; preds = %95
  %105 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %11, align 8
  %106 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %12, align 8
  %107 = getelementptr inbounds %struct.if_sdio_packet, %struct.if_sdio_packet* %106, i32 0, i32 2
  store %struct.if_sdio_packet* %105, %struct.if_sdio_packet** %107, align 8
  br label %108

108:                                              ; preds = %104, %87
  %109 = load i32, i32* %6, align 4
  switch i32 %109, label %118 [
    i32 129, label %110
    i32 128, label %114
  ]

110:                                              ; preds = %108
  %111 = load i32, i32* @DNLD_CMD_SENT, align 4
  %112 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %113 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %121

114:                                              ; preds = %108
  %115 = load i32, i32* @DNLD_DATA_SENT, align 4
  %116 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %117 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %121

118:                                              ; preds = %108
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %114, %110
  %122 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %123 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %122, i32 0, i32 2
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  %126 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %127 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.if_sdio_card*, %struct.if_sdio_card** %10, align 8
  %130 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %129, i32 0, i32 0
  %131 = call i32 @queue_work(i32 %128, i32* %130)
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %121, %39, %21
  %133 = load i32, i32* %9, align 4
  ret i32 %133
}

declare dso_local i32 @sdio_align_size(i32, i32) #1

declare dso_local %struct.if_sdio_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
