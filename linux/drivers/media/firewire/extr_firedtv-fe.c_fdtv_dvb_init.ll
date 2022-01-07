; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fe.c_fdtv_dvb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fe.c_fdtv_dvb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.firedtv* }
%struct.firedtv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"could not establish point to point connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @fdtv_dvb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_dvb_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  store %struct.firedtv* %8, %struct.firedtv** %4, align 8
  %9 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %10 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %14 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %16 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %17 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %20 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cmp_establish_pp_connection(%struct.firedtv* %15, i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %27 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %33 = call i32 @fdtv_start_iso(%struct.firedtv* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @cmp_establish_pp_connection(%struct.firedtv*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @fdtv_start_iso(%struct.firedtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
