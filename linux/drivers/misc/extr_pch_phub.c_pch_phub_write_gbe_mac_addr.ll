; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_write_gbe_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pch_phub.c_pch_phub_write_gbe_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_phub_reg = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_phub_reg*, i32*)* @pch_phub_write_gbe_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_phub_write_gbe_mac_addr(%struct.pch_phub_reg* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pch_phub_reg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pch_phub_reg* %0, %struct.pch_phub_reg** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %4, align 8
  %9 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %4, align 8
  %14 = getelementptr inbounds %struct.pch_phub_reg, %struct.pch_phub_reg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %4, align 8
  %19 = call i32 @pch_phub_gbe_serial_rom_conf(%struct.pch_phub_reg* %18)
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %12
  %21 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %4, align 8
  %22 = call i32 @pch_phub_gbe_serial_rom_conf_mp(%struct.pch_phub_reg* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.pch_phub_reg*, %struct.pch_phub_reg** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pch_phub_write_serial_rom_val(%struct.pch_phub_reg* %34, i32 %35, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %44, %26
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @pch_phub_gbe_serial_rom_conf(%struct.pch_phub_reg*) #1

declare dso_local i32 @pch_phub_gbe_serial_rom_conf_mp(%struct.pch_phub_reg*) #1

declare dso_local i32 @pch_phub_write_serial_rom_val(%struct.pch_phub_reg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
