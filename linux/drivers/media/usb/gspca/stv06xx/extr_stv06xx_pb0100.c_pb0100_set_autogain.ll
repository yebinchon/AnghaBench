; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_set_autogain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_set_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.pb0100_ctrls* }
%struct.pb0100_ctrls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PB_EXPGAIN = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Set autogain to %d (natural: %d), status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @pb0100_set_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb0100_set_autogain(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.pb0100_ctrls*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = load %struct.sd*, %struct.sd** %6, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load %struct.pb0100_ctrls*, %struct.pb0100_ctrls** %11, align 8
  store %struct.pb0100_ctrls* %12, %struct.pb0100_ctrls** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.pb0100_ctrls*, %struct.pb0100_ctrls** %7, align 8
  %17 = getelementptr inbounds %struct.pb0100_ctrls, %struct.pb0100_ctrls* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = call i32 @BIT(i32 6)
  %24 = call i32 @BIT(i32 4)
  %25 = or i32 %23, %24
  %26 = call i32 @BIT(i32 0)
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %15
  %29 = call i32 @BIT(i32 4)
  %30 = call i32 @BIT(i32 0)
  %31 = or i32 %29, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %22
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.sd*, %struct.sd** %6, align 8
  %36 = load i32, i32* @PB_EXPGAIN, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @stv06xx_write_sensor(%struct.sd* %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = load i32, i32* @D_CONF, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.pb0100_ctrls*, %struct.pb0100_ctrls** %7, align 8
  %43 = getelementptr inbounds %struct.pb0100_ctrls, %struct.pb0100_ctrls* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @gspca_dbg(%struct.gspca_dev* %39, i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
