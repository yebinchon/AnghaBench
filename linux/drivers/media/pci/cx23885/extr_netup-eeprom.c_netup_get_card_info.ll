; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_netup-eeprom.c_netup_get_card_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_netup-eeprom.c_netup_get_card_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.netup_card_info = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netup_get_card_info(%struct.i2c_adapter* %0, %struct.netup_card_info* %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.netup_card_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store %struct.netup_card_info* %1, %struct.netup_card_info** %4, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = call i8* @netup_eeprom_read(%struct.i2c_adapter* %7, i32 63)
  %9 = load %struct.netup_card_info*, %struct.netup_card_info** %4, align 8
  %10 = getelementptr inbounds %struct.netup_card_info, %struct.netup_card_info* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  store i32 64, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 70
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @netup_eeprom_read(%struct.i2c_adapter* %15, i32 %16)
  %18 = load %struct.netup_card_info*, %struct.netup_card_info** %4, align 8
  %19 = getelementptr inbounds %struct.netup_card_info, %struct.netup_card_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  store i8* %17, i8** %26, align 8
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %11

32:                                               ; preds = %11
  store i32 70, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 76
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @netup_eeprom_read(%struct.i2c_adapter* %37, i32 %38)
  %40 = load %struct.netup_card_info*, %struct.netup_card_info** %4, align 8
  %41 = getelementptr inbounds %struct.netup_card_info, %struct.netup_card_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %39, i8** %48, align 8
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %33

54:                                               ; preds = %33
  ret void
}

declare dso_local i8* @netup_eeprom_read(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
