; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.sx8* }
%struct.sx8 = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, %struct.mci_base* }
%struct.mci_base = type { i32 }
%struct.sx8_base = type { i64, i64*, i64*, i32* }
%struct.mci_command = type { i64, i64, i32 }

@SX8_DEMOD_NONE = common dso_local global i64 0, align 8
@MCI_CMD_STOP = common dso_local global i32 0, align 4
@SX8_CMD_DISABLE_IQOUTPUT = common dso_local global i32 0, align 4
@SX8_TSCONFIG_MODE_NORMAL = common dso_local global i32 0, align 4
@SX8_DEMOD_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.sx8*, align 8
  %4 = alloca %struct.mci_base*, align 8
  %5 = alloca %struct.sx8_base*, align 8
  %6 = alloca %struct.mci_command, align 8
  %7 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.sx8*, %struct.sx8** %9, align 8
  store %struct.sx8* %10, %struct.sx8** %3, align 8
  %11 = load %struct.sx8*, %struct.sx8** %3, align 8
  %12 = getelementptr inbounds %struct.sx8, %struct.sx8* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load %struct.mci_base*, %struct.mci_base** %13, align 8
  store %struct.mci_base* %14, %struct.mci_base** %4, align 8
  %15 = load %struct.mci_base*, %struct.mci_base** %4, align 8
  %16 = bitcast %struct.mci_base* %15 to %struct.sx8_base*
  store %struct.sx8_base* %16, %struct.sx8_base** %5, align 8
  %17 = load %struct.sx8*, %struct.sx8** %3, align 8
  %18 = getelementptr inbounds %struct.sx8, %struct.sx8* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = call i32 @memset(%struct.mci_command* %6, i32 0, i32 24)
  %22 = load %struct.sx8*, %struct.sx8** %3, align 8
  %23 = getelementptr inbounds %struct.sx8, %struct.sx8* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SX8_DEMOD_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %1
  %29 = load i32, i32* @MCI_CMD_STOP, align 4
  %30 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load %struct.sx8*, %struct.sx8** %3, align 8
  %32 = getelementptr inbounds %struct.sx8, %struct.sx8* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %6, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.sx8*, %struct.sx8** %3, align 8
  %37 = getelementptr inbounds %struct.sx8, %struct.sx8* %36, i32 0, i32 1
  %38 = call i32 @ddb_mci_cmd(%struct.TYPE_3__* %37, %struct.mci_command* %6, i32* null)
  %39 = load %struct.sx8_base*, %struct.sx8_base** %5, align 8
  %40 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %28
  %44 = load i32, i32* @SX8_CMD_DISABLE_IQOUTPUT, align 4
  %45 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %6, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load %struct.sx8*, %struct.sx8** %3, align 8
  %47 = getelementptr inbounds %struct.sx8, %struct.sx8* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %6, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %6, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.sx8*, %struct.sx8** %3, align 8
  %53 = getelementptr inbounds %struct.sx8, %struct.sx8* %52, i32 0, i32 1
  %54 = call i32 @ddb_mci_cmd(%struct.TYPE_3__* %53, %struct.mci_command* %6, i32* null)
  %55 = load %struct.sx8*, %struct.sx8** %3, align 8
  %56 = getelementptr inbounds %struct.sx8, %struct.sx8* %55, i32 0, i32 1
  %57 = load i32, i32* @SX8_TSCONFIG_MODE_NORMAL, align 4
  %58 = call i32 @ddb_mci_config(%struct.TYPE_3__* %56, i32 %57)
  br label %59

59:                                               ; preds = %43, %28
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.mci_base*, %struct.mci_base** %4, align 8
  %62 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.sx8_base*, %struct.sx8_base** %5, align 8
  %65 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sx8_base*, %struct.sx8_base** %5, align 8
  %72 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %60
  %79 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @mci_set_tuner(%struct.dvb_frontend* %79, i64 %80, i32 0)
  br label %82

82:                                               ; preds = %78, %60
  %83 = load %struct.sx8*, %struct.sx8** %3, align 8
  %84 = getelementptr inbounds %struct.sx8, %struct.sx8* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SX8_DEMOD_NUM, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.sx8_base*, %struct.sx8_base** %5, align 8
  %91 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load %struct.sx8*, %struct.sx8** %3, align 8
  %94 = getelementptr inbounds %struct.sx8, %struct.sx8* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %92, i64 %96
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* @SX8_DEMOD_NONE, align 8
  %99 = load %struct.sx8*, %struct.sx8** %3, align 8
  %100 = getelementptr inbounds %struct.sx8, %struct.sx8* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %89, %82
  %103 = load %struct.sx8_base*, %struct.sx8_base** %5, align 8
  %104 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.sx8*, %struct.sx8** %3, align 8
  %107 = getelementptr inbounds %struct.sx8, %struct.sx8* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  store i64 0, i64* %110, align 8
  %111 = load %struct.sx8_base*, %struct.sx8_base** %5, align 8
  %112 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.mci_base*, %struct.mci_base** %4, align 8
  %114 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load %struct.sx8*, %struct.sx8** %3, align 8
  %117 = getelementptr inbounds %struct.sx8, %struct.sx8* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.mci_command*, i32, i32) #1

declare dso_local i32 @ddb_mci_cmd(%struct.TYPE_3__*, %struct.mci_command*, i32*) #1

declare dso_local i32 @ddb_mci_config(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mci_set_tuner(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
