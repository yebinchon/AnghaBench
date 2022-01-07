; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_locked_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_locked_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ddb_input* }
%struct.ddb_input = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i32, %struct.ddb_dvb* }
%struct.ddb_dvb = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @locked_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locked_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb_input*, align 8
  %6 = alloca %struct.ddb_port*, align 8
  %7 = alloca %struct.ddb_dvb*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  store %struct.ddb_input* %11, %struct.ddb_input** %5, align 8
  %12 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %13 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %12, i32 0, i32 1
  %14 = load %struct.ddb_port*, %struct.ddb_port** %13, align 8
  store %struct.ddb_port* %14, %struct.ddb_port** %6, align 8
  %15 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %16 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %15, i32 0, i32 1
  %17 = load %struct.ddb_dvb*, %struct.ddb_dvb** %16, align 8
  %18 = load %struct.ddb_input*, %struct.ddb_input** %5, align 8
  %19 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %17, i64 %22
  store %struct.ddb_dvb* %23, %struct.ddb_dvb** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %28 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %31 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.dvb_frontend*, i32)**
  %33 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %32, align 8
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = call i32 %33(%struct.dvb_frontend* %34, i32 1)
  store i32 %35, i32* %8, align 4
  br label %46

36:                                               ; preds = %2
  %37 = load %struct.ddb_dvb*, %struct.ddb_dvb** %7, align 8
  %38 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.dvb_frontend*, i32)**
  %40 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %39, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = call i32 %40(%struct.dvb_frontend* %41, i32 0)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.ddb_port*, %struct.ddb_port** %6, align 8
  %44 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %36, %26
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
