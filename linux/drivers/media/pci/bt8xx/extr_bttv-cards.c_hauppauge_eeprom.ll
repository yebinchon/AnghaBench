; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_hauppauge_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_hauppauge_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bttv = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.tveeprom = type { i32, i32, i32 }

@eeprom_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d: Hauppauge eeprom indicates model#%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%d: Switching board type from %s to %s\0A\00", align 1
@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@BTTV_BOARD_HAUPPAUGE_IMPACTVCB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @hauppauge_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hauppauge_eeprom(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca %struct.tveeprom, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = load i32, i32* @eeprom_data, align 4
  %5 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %3, i32 %4)
  %6 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bttv*, %struct.bttv** %2, align 8
  %9 = getelementptr inbounds %struct.bttv, %struct.bttv* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bttv*, %struct.bttv** %2, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.bttv*, %struct.bttv** %2, align 8
  %15 = getelementptr inbounds %struct.bttv, %struct.bttv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 64900
  br i1 %23, label %24, label %47

24:                                               ; preds = %1
  %25 = load %struct.bttv*, %struct.bttv** %2, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %30 = load %struct.bttv*, %struct.bttv** %2, align 8
  %31 = getelementptr inbounds %struct.bttv, %struct.bttv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %38 = load i64, i64* @BTTV_BOARD_HAUPPAUGE_IMPACTVCB, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %36, i32 %41)
  %43 = load i64, i64* @BTTV_BOARD_HAUPPAUGE_IMPACTVCB, align 8
  %44 = load %struct.bttv*, %struct.bttv** %2, align 8
  %45 = getelementptr inbounds %struct.bttv, %struct.bttv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %24, %1
  %48 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 61334
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.bttv*, %struct.bttv** %2, align 8
  %53 = getelementptr inbounds %struct.bttv, %struct.bttv* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %47
  ret void
}

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
