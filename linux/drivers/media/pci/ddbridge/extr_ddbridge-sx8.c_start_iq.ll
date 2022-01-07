; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_start_iq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-sx8.c_start_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.sx8* }
%struct.dtv_frontend_properties = type { i32, i32 }
%struct.sx8 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, %struct.mci_base* }
%struct.mci_base = type { i32 }
%struct.sx8_base = type { i32, i32*, i64* }
%struct.mci_command = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@SX8_DEMOD_NUM = common dso_local global i32 0, align 4
@SX8_CMD_START_IQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64, i64, i64)* @start_iq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_iq(%struct.dvb_frontend* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sx8*, align 8
  %11 = alloca %struct.mci_base*, align 8
  %12 = alloca %struct.sx8_base*, align 8
  %13 = alloca %struct.dtv_frontend_properties*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mci_command, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 1
  %21 = load %struct.sx8*, %struct.sx8** %20, align 8
  store %struct.sx8* %21, %struct.sx8** %10, align 8
  %22 = load %struct.sx8*, %struct.sx8** %10, align 8
  %23 = getelementptr inbounds %struct.sx8, %struct.sx8* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load %struct.mci_base*, %struct.mci_base** %24, align 8
  store %struct.mci_base* %25, %struct.mci_base** %11, align 8
  %26 = load %struct.mci_base*, %struct.mci_base** %11, align 8
  %27 = bitcast %struct.mci_base* %26 to %struct.sx8_base*
  store %struct.sx8_base* %27, %struct.sx8_base** %12, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  store %struct.dtv_frontend_properties* %29, %struct.dtv_frontend_properties** %13, align 8
  store i64 0, i64* %14, align 8
  %30 = load %struct.sx8*, %struct.sx8** %10, align 8
  %31 = getelementptr inbounds %struct.sx8, %struct.sx8* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %34 = load %struct.mci_base*, %struct.mci_base** %11, align 8
  %35 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %38 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %18, align 4
  br label %99

44:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @SX8_DEMOD_NUM, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %51 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i64, i64* %14, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %58, %49
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %45

65:                                               ; preds = %45
  %66 = load i64, i64* %14, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %18, align 4
  br label %99

71:                                               ; preds = %65
  %72 = load %struct.sx8*, %struct.sx8** %10, align 8
  %73 = getelementptr inbounds %struct.sx8, %struct.sx8* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %76 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %71
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @mci_set_tuner(%struct.dvb_frontend* %83, i64 %84, i32 1)
  br label %86

86:                                               ; preds = %82, %71
  %87 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %88 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load i64, i64* %9, align 8
  %95 = icmp sgt i64 %94, 1
  %96 = zext i1 %95 to i32
  %97 = load %struct.sx8_base*, %struct.sx8_base** %12, align 8
  %98 = getelementptr inbounds %struct.sx8_base, %struct.sx8_base* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %86, %68, %41
  %100 = load %struct.mci_base*, %struct.mci_base** %11, align 8
  %101 = getelementptr inbounds %struct.mci_base, %struct.mci_base* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %18, align 4
  store i32 %106, i32* %5, align 4
  br label %152

107:                                              ; preds = %99
  %108 = call i32 @memset(%struct.mci_command* %15, i32 0, i32 48)
  %109 = load i32, i32* @SX8_CMD_START_IQ, align 4
  %110 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %15, i32 0, i32 3
  store i32 %109, i32* %110, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %15, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %15, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 1000
  %121 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %15, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %13, align 8
  %124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %15, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.sx8*, %struct.sx8** %10, align 8
  %129 = getelementptr inbounds %struct.sx8, %struct.sx8* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %15, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  %133 = load %struct.sx8*, %struct.sx8** %10, align 8
  %134 = getelementptr inbounds %struct.sx8, %struct.sx8* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.mci_command, %struct.mci_command* %15, i32 0, i32 1
  store i64 %136, i64* %137, align 8
  %138 = load %struct.sx8*, %struct.sx8** %10, align 8
  %139 = getelementptr inbounds %struct.sx8, %struct.sx8* %138, i32 0, i32 0
  %140 = call i32 @ddb_mci_cmd(%struct.TYPE_5__* %139, %struct.mci_command* %15, i32* null)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %107
  %144 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %145 = call i32 @stop(%struct.dvb_frontend* %144)
  br label %146

146:                                              ; preds = %143, %107
  %147 = load %struct.sx8*, %struct.sx8** %10, align 8
  %148 = getelementptr inbounds %struct.sx8, %struct.sx8* %147, i32 0, i32 0
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @ddb_mci_config(%struct.TYPE_5__* %148, i64 %149)
  %151 = load i32, i32* %18, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %146, %105
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mci_set_tuner(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.mci_command*, i32, i32) #1

declare dso_local i32 @ddb_mci_cmd(%struct.TYPE_5__*, %struct.mci_command*, i32*) #1

declare dso_local i32 @stop(%struct.dvb_frontend*) #1

declare dso_local i32 @ddb_mci_config(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
