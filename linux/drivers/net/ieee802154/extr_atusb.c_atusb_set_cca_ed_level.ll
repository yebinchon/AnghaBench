; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_set_cca_ed_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_set_cca_ed_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.TYPE_4__*, %struct.atusb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64* }
%struct.atusb = type { i32 }

@SR_CCA_ED_THRES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i64)* @atusb_set_cca_ed_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atusb_set_cca_ed_level(%struct.ieee802154_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.atusb*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %8, i32 0, i32 1
  %10 = load %struct.atusb*, %struct.atusb** %9, align 8
  store %struct.atusb* %10, %struct.atusb** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %12, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %11
  %21 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.atusb*, %struct.atusb** %6, align 8
  %34 = load i32, i32* @SR_CCA_ED_THRES, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @atusb_write_subreg(%struct.atusb* %33, i32 %34, i64 %35)
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %11

41:                                               ; preds = %11
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @atusb_write_subreg(%struct.atusb*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
