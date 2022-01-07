; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_hulusb_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_hulusb_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.atusb* }
%struct.atusb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SR_SUB_MODE = common dso_local global i32 0, align 4
@SR_BPSK_QPSK = common dso_local global i32 0, align 4
@IEEE802154_LIFS_PERIOD = common dso_local global i32 0, align 4
@IEEE802154_SIFS_PERIOD = common dso_local global i32 0, align 4
@SR_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i64, i64)* @hulusb_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hulusb_set_channel(%struct.ieee802154_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atusb*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %11, i32 0, i32 0
  %13 = load %struct.atusb*, %struct.atusb** %12, align 8
  store %struct.atusb* %13, %struct.atusb** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.atusb*, %struct.atusb** %10, align 8
  %18 = load i32, i32* @SR_SUB_MODE, align 4
  %19 = call i32 @atusb_write_subreg(%struct.atusb* %17, i32 %18, i64 0)
  store i32 %19, i32* %8, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.atusb*, %struct.atusb** %10, align 8
  %22 = load i32, i32* @SR_SUB_MODE, align 4
  %23 = call i32 @atusb_write_subreg(%struct.atusb* %21, i32 %22, i64 1)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %127

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.atusb*, %struct.atusb** %10, align 8
  %34 = load i32, i32* @SR_BPSK_QPSK, align 4
  %35 = call i32 @atusb_write_subreg(%struct.atusb* %33, i32 %34, i64 0)
  store i32 %35, i32* %8, align 4
  store i32 -100, i32* %9, align 4
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.atusb*, %struct.atusb** %10, align 8
  %38 = load i32, i32* @SR_BPSK_QPSK, align 4
  %39 = call i32 @atusb_write_subreg(%struct.atusb* %37, i32 %38, i64 1)
  store i32 %39, i32* %8, align 4
  store i32 -98, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %127

45:                                               ; preds = %40
  %46 = load %struct.atusb*, %struct.atusb** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @hulusb_set_cca_ed_level(%struct.atusb* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %127

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.atusb*, %struct.atusb** %10, align 8
  %61 = getelementptr inbounds %struct.atusb, %struct.atusb* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 50, i32* %65, align 4
  br label %73

66:                                               ; preds = %56
  %67 = load %struct.atusb*, %struct.atusb** %10, align 8
  %68 = getelementptr inbounds %struct.atusb, %struct.atusb* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 25, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %59
  br label %92

74:                                               ; preds = %53
  %75 = load i64, i64* %6, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.atusb*, %struct.atusb** %10, align 8
  %79 = getelementptr inbounds %struct.atusb, %struct.atusb* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 40, i32* %83, align 4
  br label %91

84:                                               ; preds = %74
  %85 = load %struct.atusb*, %struct.atusb** %10, align 8
  %86 = getelementptr inbounds %struct.atusb, %struct.atusb* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 16, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %73
  %93 = load i32, i32* @IEEE802154_LIFS_PERIOD, align 4
  %94 = load %struct.atusb*, %struct.atusb** %10, align 8
  %95 = getelementptr inbounds %struct.atusb, %struct.atusb* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %93, %100
  %102 = load %struct.atusb*, %struct.atusb** %10, align 8
  %103 = getelementptr inbounds %struct.atusb, %struct.atusb* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* @IEEE802154_SIFS_PERIOD, align 4
  %109 = load %struct.atusb*, %struct.atusb** %10, align 8
  %110 = getelementptr inbounds %struct.atusb, %struct.atusb* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %108, %115
  %117 = load %struct.atusb*, %struct.atusb** %10, align 8
  %118 = getelementptr inbounds %struct.atusb, %struct.atusb* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  store i32 %116, i32* %122, align 4
  %123 = load %struct.atusb*, %struct.atusb** %10, align 8
  %124 = load i32, i32* @SR_CHANNEL, align 4
  %125 = load i64, i64* %7, align 8
  %126 = call i32 @atusb_write_subreg(%struct.atusb* %123, i32 %124, i64 %125)
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %92, %51, %43, %27
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @atusb_write_subreg(%struct.atusb*, i32, i64) #1

declare dso_local i32 @hulusb_set_cca_ed_level(%struct.atusb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
