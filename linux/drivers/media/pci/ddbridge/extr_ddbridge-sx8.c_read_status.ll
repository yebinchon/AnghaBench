; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.sx8* }
%struct.sx8 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mci_command = type { i32, i32 }
%struct.mci_result = type { i64 }

@MCI_CMD_GETSTATUS = common dso_local global i32 0, align 4
@SX8_DEMOD_WAIT_MATYPE = common dso_local global i64 0, align 8
@SX8_DEMOD_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sx8*, align 8
  %8 = alloca %struct.mci_command, align 4
  %9 = alloca %struct.mci_result, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.sx8*, %struct.sx8** %11, align 8
  store %struct.sx8* %12, %struct.sx8** %7, align 8
  %13 = load i32, i32* @MCI_CMD_GETSTATUS, align 4
  %14 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.sx8*, %struct.sx8** %7, align 8
  %16 = getelementptr inbounds %struct.sx8, %struct.sx8* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.sx8*, %struct.sx8** %7, align 8
  %21 = getelementptr inbounds %struct.sx8, %struct.sx8* %20, i32 0, i32 0
  %22 = call i32 @ddb_mci_cmd(%struct.TYPE_2__* %21, %struct.mci_command* %8, %struct.mci_result* %9)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %30 = call i32 @get_info(%struct.dvb_frontend* %29)
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %32 = call i32 @get_strength(%struct.dvb_frontend* %31)
  %33 = getelementptr inbounds %struct.mci_result, %struct.mci_result* %9, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SX8_DEMOD_WAIT_MATYPE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32*, i32** %5, align 8
  store i32 15, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %27
  %40 = getelementptr inbounds %struct.mci_result, %struct.mci_result* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SX8_DEMOD_LOCKED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  store i32 31, i32* %45, align 4
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %47 = call i32 @get_snr(%struct.dvb_frontend* %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %25
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ddb_mci_cmd(%struct.TYPE_2__*, %struct.mci_command*, %struct.mci_result*) #1

declare dso_local i32 @get_info(%struct.dvb_frontend*) #1

declare dso_local i32 @get_strength(%struct.dvb_frontend*) #1

declare dso_local i32 @get_snr(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
