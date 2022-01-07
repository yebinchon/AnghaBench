; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_quirks.h_mmc_fixup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_quirks.h_mmc_fixup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.mmc_fixup = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 (%struct.mmc_card.0*, i32)* }
%struct.mmc_card.0 = type opaque

@CID_MANFID_ANY = common dso_local global i64 0, align 8
@CID_OEMID_ANY = common dso_local global i64 0, align 8
@CID_NAME_ANY = common dso_local global i64 0, align 8
@SDIO_ANY_ID = common dso_local global i64 0, align 8
@EXT_CSD_REV_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"calling %ps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*, %struct.mmc_fixup*)* @mmc_fixup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_fixup_device(%struct.mmc_card* %0, %struct.mmc_fixup* %1) #0 {
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_fixup*, align 8
  %5 = alloca %struct.mmc_fixup*, align 8
  %6 = alloca i64, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  store %struct.mmc_fixup* %1, %struct.mmc_fixup** %4, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %8 = call i64 @cid_rev_card(%struct.mmc_card* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.mmc_fixup*, %struct.mmc_fixup** %4, align 8
  store %struct.mmc_fixup* %9, %struct.mmc_fixup** %5, align 8
  br label %10

10:                                               ; preds = %136, %2
  %11 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %11, i32 0, i32 9
  %13 = load i32 (%struct.mmc_card.0*, i32)*, i32 (%struct.mmc_card.0*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.mmc_card.0*, i32)* %13, null
  br i1 %14, label %15, label %139

15:                                               ; preds = %10
  %16 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CID_MANFID_ANY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %135

30:                                               ; preds = %21, %15
  %31 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %32 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CID_OEMID_ANY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %135

45:                                               ; preds = %36, %30
  %46 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CID_NAME_ANY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %45
  %52 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %53 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %56 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strncmp(i64 %54, i32 %58, i32 4)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %135, label %61

61:                                               ; preds = %51, %45
  %62 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %66 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %72 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SDIO_ANY_ID, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %135

76:                                               ; preds = %70, %61
  %77 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %78 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %81 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %79, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %76
  %86 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %87 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SDIO_ANY_ID, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %135

91:                                               ; preds = %85, %76
  %92 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %93 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @EXT_CSD_REV_ANY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %91
  %98 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %99 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %102 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %100, %104
  br i1 %105, label %106, label %135

106:                                              ; preds = %97, %91
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %109 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp sge i64 %107, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %106
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %115 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = icmp sle i64 %113, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %112
  %119 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %120 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %119, i32 0, i32 0
  %121 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %122 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %121, i32 0, i32 9
  %123 = load i32 (%struct.mmc_card.0*, i32)*, i32 (%struct.mmc_card.0*, i32)** %122, align 8
  %124 = bitcast i32 (%struct.mmc_card.0*, i32)* %123 to i32 (%struct.mmc_card*, i32)*
  %125 = call i32 @dev_dbg(i32* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 (%struct.mmc_card*, i32)* %124)
  %126 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %127 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %126, i32 0, i32 9
  %128 = load i32 (%struct.mmc_card.0*, i32)*, i32 (%struct.mmc_card.0*, i32)** %127, align 8
  %129 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %130 = bitcast %struct.mmc_card* %129 to %struct.mmc_card.0*
  %131 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %132 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %128(%struct.mmc_card.0* %130, i32 %133)
  br label %135

135:                                              ; preds = %118, %112, %106, %97, %85, %70, %51, %36, %21
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.mmc_fixup*, %struct.mmc_fixup** %5, align 8
  %138 = getelementptr inbounds %struct.mmc_fixup, %struct.mmc_fixup* %137, i32 1
  store %struct.mmc_fixup* %138, %struct.mmc_fixup** %5, align 8
  br label %10

139:                                              ; preds = %10
  ret void
}

declare dso_local i64 @cid_rev_card(%struct.mmc_card*) #1

declare dso_local i32 @strncmp(i64, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32 (%struct.mmc_card*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
