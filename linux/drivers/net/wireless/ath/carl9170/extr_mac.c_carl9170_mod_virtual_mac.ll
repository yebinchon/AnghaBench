; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_mod_virtual_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_mod_virtual_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR9170_MAC_REG_ACK_TABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_mod_virtual_mac(%struct.ar9170* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %10 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp uge i32 %8, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %22 = load i64, i64* @AR9170_MAC_REG_ACK_TABLE, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sub i32 %23, 1
  %25 = mul i32 %24, 8
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @carl9170_set_mac_reg(%struct.ar9170* %21, i64 %27, i32* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @carl9170_set_mac_reg(%struct.ar9170*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
