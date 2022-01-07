; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_av7110_fe_diseqc_reset_overload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_av7110_fe_diseqc_reset_overload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.av7110* }
%struct.av7110 = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @av7110_fe_diseqc_reset_overload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av7110_fe_diseqc_reset_overload(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.av7110*, %struct.av7110** %8, align 8
  store %struct.av7110* %9, %struct.av7110** %3, align 8
  %10 = load %struct.av7110*, %struct.av7110** %3, align 8
  %11 = call i32 @av7110_fe_lock_fix(%struct.av7110* %10, i32 0)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.av7110*, %struct.av7110** %3, align 8
  %16 = getelementptr inbounds %struct.av7110, %struct.av7110* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.dvb_frontend*)**
  %18 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %17, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %20 = call i32 %18(%struct.dvb_frontend* %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @av7110_fe_lock_fix(%struct.av7110*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
