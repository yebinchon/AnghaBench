; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_mci_set_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_mci_set_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.sx8* }
%struct.sx8 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.mci_base* }
%struct.mci_base = type { i32 }
%struct.sx8_base = type { i32* }
%struct.mci_command = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@SX8_CMD_INPUT_ENABLE = common dso_local global i32 0, align 4
@SX8_CMD_INPUT_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64, i64)* @mci_set_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mci_set_tuner(%struct.dvb_frontend* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sx8*, align 8
  %8 = alloca %struct.mci_base*, align 8
  %9 = alloca %struct.sx8_base*, align 8
  %10 = alloca %struct.mci_command, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.sx8*, %struct.sx8** %12, align 8
  store %struct.sx8* %13, %struct.sx8** %7, align 8
  %14 = load %struct.sx8*, %struct.sx8** %7, align 8
  %15 = getelementptr inbounds %struct.sx8, %struct.sx8* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.mci_base*, %struct.mci_base** %16, align 8
  store %struct.mci_base* %17, %struct.mci_base** %8, align 8
  %18 = load %struct.mci_base*, %struct.mci_base** %8, align 8
  %19 = bitcast %struct.mci_base* %18 to %struct.sx8_base*
  store %struct.sx8_base* %19, %struct.sx8_base** %9, align 8
  %20 = call i32 @memset(%struct.mci_command* %10, i32 0, i32 16)
  %21 = load %struct.sx8*, %struct.sx8** %7, align 8
  %22 = getelementptr inbounds %struct.sx8, %struct.sx8* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %10, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @SX8_CMD_INPUT_ENABLE, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @SX8_CMD_INPUT_DISABLE, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %10, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.sx8_base*, %struct.sx8_base** %9, align 8
  %36 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sx8*, %struct.sx8** %7, align 8
  %39 = getelementptr inbounds %struct.sx8, %struct.sx8* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %10, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sx8*, %struct.sx8** %7, align 8
  %47 = getelementptr inbounds %struct.sx8, %struct.sx8* %46, i32 0, i32 0
  %48 = call i32 @ddb_mci_cmd(%struct.TYPE_4__* %47, %struct.mci_command* %10, i32* null)
  ret i32 %48
}

declare dso_local i32 @memset(%struct.mci_command*, i32, i32) #1

declare dso_local i32 @ddb_mci_cmd(%struct.TYPE_4__*, %struct.mci_command*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
