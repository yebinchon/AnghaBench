; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_fe_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_fe_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_port = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_port*)* @smi_fe_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_fe_exit(%struct.smi_port* %0) #0 {
  %2 = alloca %struct.smi_port*, align 8
  store %struct.smi_port* %0, %struct.smi_port** %2, align 8
  %3 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %4 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @dvb_unregister_frontend(i32 %5)
  %7 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %8 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %13 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @smi_del_i2c_client(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %18 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %23 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @smi_del_i2c_client(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.smi_port*, %struct.smi_port** %2, align 8
  %28 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dvb_frontend_detach(i32 %29)
  ret void
}

declare dso_local i32 @dvb_unregister_frontend(i32) #1

declare dso_local i32 @smi_del_i2c_client(i64) #1

declare dso_local i32 @dvb_frontend_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
