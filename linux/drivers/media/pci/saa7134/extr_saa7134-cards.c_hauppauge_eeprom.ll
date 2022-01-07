; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_hauppauge_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-cards.c_hauppauge_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }
%struct.tveeprom = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s: warning: unknown hauppauge model #%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: hauppauge eeprom: model=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*, i32*)* @hauppauge_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hauppauge_eeprom(%struct.saa7134_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tveeprom, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %5, i32* %6)
  %8 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 67019, label %10
    i32 67109, label %10
    i32 67201, label %10
    i32 67301, label %10
    i32 67209, label %10
    i32 67559, label %10
    i32 67569, label %10
    i32 67579, label %10
    i32 67589, label %10
    i32 67599, label %10
    i32 67651, label %10
    i32 67659, label %10
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16)
  br label %18

18:                                               ; preds = %11, %10
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %23)
  ret void
}

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
