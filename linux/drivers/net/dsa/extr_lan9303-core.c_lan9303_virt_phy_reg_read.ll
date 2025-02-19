; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_virt_phy_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_virt_phy_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32 }

@MII_EXPANSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LAN9303_VIRT_PHY_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*, i32)* @lan9303_virt_phy_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_virt_phy_reg_read(%struct.lan9303* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lan9303*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MII_EXPANSION, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %16 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @LAN9303_VIRT_PHY_BASE, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @lan9303_read(i32 %17, i64 %21, i32* %7)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 65535
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %25, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @lan9303_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
