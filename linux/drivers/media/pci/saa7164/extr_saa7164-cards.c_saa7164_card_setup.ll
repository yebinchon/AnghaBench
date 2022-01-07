; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-cards.c_saa7164_card_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-cards.c_saa7164_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@saa7164_card_setup.eeprom = internal global [256 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7164_card_setup(%struct.saa7164_dev* %0) #0 {
  %2 = alloca %struct.saa7164_dev*, align 8
  store %struct.saa7164_dev* %0, %struct.saa7164_dev** %2, align 8
  %3 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %4 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %12 = call i64 @saa7164_api_read_eeprom(%struct.saa7164_dev* %11, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @saa7164_card_setup.eeprom, i64 0, i64 0), i32 1024)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %23

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %18 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %23 [
    i32 138, label %20
    i32 137, label %20
    i32 136, label %20
    i32 135, label %20
    i32 134, label %20
    i32 132, label %20
    i32 131, label %20
    i32 130, label %20
    i32 128, label %20
    i32 129, label %20
    i32 133, label %20
  ]

20:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  %21 = load %struct.saa7164_dev*, %struct.saa7164_dev** %2, align 8
  %22 = call i32 @hauppauge_eeprom(%struct.saa7164_dev* %21, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @saa7164_card_setup.eeprom, i64 0, i64 0))
  br label %23

23:                                               ; preds = %14, %16, %20
  ret void
}

declare dso_local i64 @saa7164_api_read_eeprom(%struct.saa7164_dev*, i32*, i32) #1

declare dso_local i32 @hauppauge_eeprom(%struct.saa7164_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
