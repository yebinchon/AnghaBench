; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_hauppauge_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_hauppauge_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tveeprom = type { i32, i64, i32, i32 }

@CX88_RADIO = common dso_local global i32 0, align 4
@MO_GP0_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"warning: unknown hauppauge model #%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"hauppauge eeprom: model=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, i32*)* @hauppauge_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hauppauge_eeprom(%struct.cx88_core* %0, i32* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tveeprom, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %5, i32* %6)
  %8 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %16 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @CX88_RADIO, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %26 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %32 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %39 [
    i32 14009, label %35
    i32 14019, label %35
    i32 14029, label %35
    i32 14109, label %35
    i32 14129, label %35
    i32 14559, label %35
    i32 14569, label %35
    i32 14659, label %35
    i32 14669, label %35
    i32 28552, label %35
    i32 34519, label %35
    i32 69009, label %35
    i32 69100, label %35
    i32 69500, label %35
    i32 69559, label %35
    i32 69569, label %35
    i32 90002, label %35
    i32 92001, label %35
    i32 92002, label %35
    i32 90003, label %35
    i32 90500, label %35
    i32 90501, label %35
    i32 92000, label %35
    i32 92900, label %35
    i32 94009, label %35
    i32 94501, label %35
    i32 96009, label %35
    i32 96019, label %35
    i32 96559, label %35
    i32 96569, label %35
    i32 96659, label %35
    i32 98559, label %35
    i32 128, label %36
  ]

35:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  br label %43

36:                                               ; preds = %23
  %37 = load i32, i32* @MO_GP0_IO, align 4
  %38 = call i32 @cx_set(i32 %37, i32 9013759)
  br label %43

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36, %35
  %44 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  ret void
}

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, i32*) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
