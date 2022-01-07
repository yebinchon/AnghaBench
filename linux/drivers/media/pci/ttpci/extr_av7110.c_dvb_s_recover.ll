; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_dvb_s_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110.c_dvb_s_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.av7110*)* @dvb_s_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_s_recover(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %3 = load %struct.av7110*, %struct.av7110** %2, align 8
  %4 = getelementptr inbounds %struct.av7110, %struct.av7110* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @av7110_fe_init(i32 %5)
  %7 = load %struct.av7110*, %struct.av7110** %2, align 8
  %8 = getelementptr inbounds %struct.av7110, %struct.av7110* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.av7110*, %struct.av7110** %2, align 8
  %11 = getelementptr inbounds %struct.av7110, %struct.av7110* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @av7110_fe_set_voltage(i32 %9, i32 %12)
  %14 = load %struct.av7110*, %struct.av7110** %2, align 8
  %15 = getelementptr inbounds %struct.av7110, %struct.av7110* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = call i32 @msleep(i32 20)
  %21 = load %struct.av7110*, %struct.av7110** %2, align 8
  %22 = getelementptr inbounds %struct.av7110, %struct.av7110* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.av7110*, %struct.av7110** %2, align 8
  %25 = getelementptr inbounds %struct.av7110, %struct.av7110* %24, i32 0, i32 3
  %26 = call i32 @av7110_fe_diseqc_send_master_cmd(i32 %23, %struct.TYPE_2__* %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = call i32 @msleep(i32 20)
  %29 = load %struct.av7110*, %struct.av7110** %2, align 8
  %30 = getelementptr inbounds %struct.av7110, %struct.av7110* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.av7110*, %struct.av7110** %2, align 8
  %33 = getelementptr inbounds %struct.av7110, %struct.av7110* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @av7110_fe_diseqc_send_burst(i32 %31, i32 %34)
  %36 = call i32 @msleep(i32 20)
  %37 = load %struct.av7110*, %struct.av7110** %2, align 8
  %38 = getelementptr inbounds %struct.av7110, %struct.av7110* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.av7110*, %struct.av7110** %2, align 8
  %41 = getelementptr inbounds %struct.av7110, %struct.av7110* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @av7110_fe_set_tone(i32 %39, i32 %42)
  %44 = load %struct.av7110*, %struct.av7110** %2, align 8
  %45 = getelementptr inbounds %struct.av7110, %struct.av7110* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @av7110_fe_set_frontend(i32 %46)
  ret void
}

declare dso_local i32 @av7110_fe_init(i32) #1

declare dso_local i32 @av7110_fe_set_voltage(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @av7110_fe_diseqc_send_master_cmd(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @av7110_fe_diseqc_send_burst(i32, i32) #1

declare dso_local i32 @av7110_fe_set_tone(i32, i32) #1

declare dso_local i32 @av7110_fe_set_frontend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
