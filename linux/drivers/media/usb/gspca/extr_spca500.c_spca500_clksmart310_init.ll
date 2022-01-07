; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca500.c_spca500_clksmart310_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca500.c_spca500_clksmart310_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ClickSmart310 init 0x0d05 0x%02x 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @spca500_clksmart310_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spca500_clksmart310_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @reg_r(%struct.gspca_dev* %3, i32 3333, i32 2)
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = load i32, i32* @D_STREAM, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gspca_dbg(%struct.gspca_dev* %5, i32 %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @reg_w(%struct.gspca_dev* %18, i32 0, i32 33127, i32 90)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @spca500_ping310(%struct.gspca_dev* %20)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @reg_w(%struct.gspca_dev* %22, i32 0, i32 33128, i32 34)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = call i32 @reg_w(%struct.gspca_dev* %24, i32 0, i32 33130, i32 192)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = call i32 @reg_w(%struct.gspca_dev* %26, i32 0, i32 33131, i32 11)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = call i32 @reg_w(%struct.gspca_dev* %28, i32 0, i32 33129, i32 37)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @reg_w(%struct.gspca_dev* %30, i32 0, i32 33111, i32 91)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @reg_w(%struct.gspca_dev* %32, i32 0, i32 33112, i32 91)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_w(%struct.gspca_dev* %34, i32 0, i32 33087, i32 3)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @reg_w(%struct.gspca_dev* %36, i32 0, i32 33105, i32 74)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @reg_w(%struct.gspca_dev* %38, i32 0, i32 33107, i32 120)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @reg_w(%struct.gspca_dev* %40, i32 0, i32 3329, i32 4)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = call i32 @reg_w(%struct.gspca_dev* %42, i32 0, i32 3330, i32 1)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @reg_w(%struct.gspca_dev* %44, i32 0, i32 33129, i32 37)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 @reg_w(%struct.gspca_dev* %46, i32 0, i32 3329, i32 2)
  ret void
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca500_ping310(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
