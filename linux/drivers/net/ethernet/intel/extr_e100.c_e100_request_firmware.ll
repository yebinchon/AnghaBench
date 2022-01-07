; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32* }
%struct.nic = type { i32, i64, %struct.firmware*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ich = common dso_local global i32 0, align 4
@mac_82559_D101M = common dso_local global i64 0, align 8
@FIRMWARE_D101M = common dso_local global i8* null, align 8
@mac_82559_D101S = common dso_local global i64 0, align 8
@FIRMWARE_D101S = common dso_local global i8* null, align 8
@mac_82551_F = common dso_local global i64 0, align 8
@mac_82551_10 = common dso_local global i64 0, align 8
@FIRMWARE_D102E = common dso_local global i8* null, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to load firmware \22%s\22: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"CPUSaver disabled. Needs \22%s\22: %d\0A\00", align 1
@UCODE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Firmware \22%s\22 has wrong size %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"\22%s\22 has bogus offset values (0x%x,0x%x,0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.firmware* (%struct.nic*)* @e100_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.firmware* @e100_request_firmware(%struct.nic* %0) #0 {
  %2 = alloca %struct.firmware*, align 8
  %3 = alloca %struct.nic*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %3, align 8
  %11 = load %struct.nic*, %struct.nic** %3, align 8
  %12 = getelementptr inbounds %struct.nic, %struct.nic* %11, i32 0, i32 2
  %13 = load %struct.firmware*, %struct.firmware** %12, align 8
  store %struct.firmware* %13, %struct.firmware** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.nic*, %struct.nic** %3, align 8
  %15 = getelementptr inbounds %struct.nic, %struct.nic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ich, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.firmware* null, %struct.firmware** %2, align 8
  br label %173

21:                                               ; preds = %1
  %22 = load %struct.nic*, %struct.nic** %3, align 8
  %23 = getelementptr inbounds %struct.nic, %struct.nic* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @mac_82559_D101M, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i8*, i8** @FIRMWARE_D101M, align 8
  store i8* %28, i8** %4, align 8
  br label %54

29:                                               ; preds = %21
  %30 = load %struct.nic*, %struct.nic** %3, align 8
  %31 = getelementptr inbounds %struct.nic, %struct.nic* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @mac_82559_D101S, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i8*, i8** @FIRMWARE_D101S, align 8
  store i8* %36, i8** %4, align 8
  br label %53

37:                                               ; preds = %29
  %38 = load %struct.nic*, %struct.nic** %3, align 8
  %39 = getelementptr inbounds %struct.nic, %struct.nic* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @mac_82551_F, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.nic*, %struct.nic** %3, align 8
  %45 = getelementptr inbounds %struct.nic, %struct.nic* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @mac_82551_10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %37
  %50 = load i8*, i8** @FIRMWARE_D102E, align 8
  store i8* %50, i8** %4, align 8
  store i32 1, i32* %10, align 4
  br label %52

51:                                               ; preds = %43
  store %struct.firmware* null, %struct.firmware** %2, align 8
  br label %173

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.firmware*, %struct.firmware** %5, align 8
  %56 = icmp ne %struct.firmware* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = load %struct.nic*, %struct.nic** %3, align 8
  %60 = getelementptr inbounds %struct.nic, %struct.nic* %59, i32 0, i32 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @request_firmware(%struct.firmware** %5, i8* %58, i32* %62)
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %57, %54
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.nic*, %struct.nic** %3, align 8
  %72 = load i32, i32* @probe, align 4
  %73 = load %struct.nic*, %struct.nic** %3, align 8
  %74 = getelementptr inbounds %struct.nic, %struct.nic* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (%struct.nic*, i32, i32, i8*, i8*, i32, ...) @netif_err(%struct.nic* %71, i32 %72, i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = call %struct.firmware* @ERR_PTR(i32 %79)
  store %struct.firmware* %80, %struct.firmware** %2, align 8
  br label %173

81:                                               ; preds = %67
  %82 = load %struct.nic*, %struct.nic** %3, align 8
  %83 = load i32, i32* @probe, align 4
  %84 = load %struct.nic*, %struct.nic** %3, align 8
  %85 = getelementptr inbounds %struct.nic, %struct.nic* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @netif_info(%struct.nic* %82, i32 %83, i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %87, i32 %88)
  store %struct.firmware* null, %struct.firmware** %2, align 8
  br label %173

90:                                               ; preds = %64
  %91 = load %struct.firmware*, %struct.firmware** %5, align 8
  %92 = getelementptr inbounds %struct.firmware, %struct.firmware* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @UCODE_SIZE, align 4
  %95 = mul nsw i32 %94, 4
  %96 = add nsw i32 %95, 3
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %90
  %99 = load %struct.nic*, %struct.nic** %3, align 8
  %100 = load i32, i32* @probe, align 4
  %101 = load %struct.nic*, %struct.nic** %3, align 8
  %102 = getelementptr inbounds %struct.nic, %struct.nic* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.firmware*, %struct.firmware** %5, align 8
  %106 = getelementptr inbounds %struct.firmware, %struct.firmware* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.nic*, i32, i32, i8*, i8*, i32, ...) @netif_err(%struct.nic* %99, i32 %100, i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %104, i32 %107)
  %109 = load %struct.firmware*, %struct.firmware** %5, align 8
  %110 = call i32 @release_firmware(%struct.firmware* %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  %113 = call %struct.firmware* @ERR_PTR(i32 %112)
  store %struct.firmware* %113, %struct.firmware** %2, align 8
  br label %173

114:                                              ; preds = %90
  %115 = load %struct.firmware*, %struct.firmware** %5, align 8
  %116 = getelementptr inbounds %struct.firmware, %struct.firmware* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @UCODE_SIZE, align 4
  %119 = mul nsw i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %6, align 4
  %123 = load %struct.firmware*, %struct.firmware** %5, align 8
  %124 = getelementptr inbounds %struct.firmware, %struct.firmware* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @UCODE_SIZE, align 4
  %127 = mul nsw i32 %126, 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %7, align 4
  %132 = load %struct.firmware*, %struct.firmware** %5, align 8
  %133 = getelementptr inbounds %struct.firmware, %struct.firmware* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @UCODE_SIZE, align 4
  %136 = mul nsw i32 %135, 4
  %137 = add nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @UCODE_SIZE, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %114
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @UCODE_SIZE, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @UCODE_SIZE, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %148, %144, %114
  %153 = load %struct.nic*, %struct.nic** %3, align 8
  %154 = load i32, i32* @probe, align 4
  %155 = load %struct.nic*, %struct.nic** %3, align 8
  %156 = getelementptr inbounds %struct.nic, %struct.nic* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = call i32 (%struct.nic*, i32, i32, i8*, i8*, i32, ...) @netif_err(%struct.nic* %153, i32 %154, i32 %157, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %158, i32 %159, i32 %160, i32 %161)
  %163 = load %struct.firmware*, %struct.firmware** %5, align 8
  %164 = call i32 @release_firmware(%struct.firmware* %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  %167 = call %struct.firmware* @ERR_PTR(i32 %166)
  store %struct.firmware* %167, %struct.firmware** %2, align 8
  br label %173

168:                                              ; preds = %148
  %169 = load %struct.firmware*, %struct.firmware** %5, align 8
  %170 = load %struct.nic*, %struct.nic** %3, align 8
  %171 = getelementptr inbounds %struct.nic, %struct.nic* %170, i32 0, i32 2
  store %struct.firmware* %169, %struct.firmware** %171, align 8
  %172 = load %struct.firmware*, %struct.firmware** %5, align 8
  store %struct.firmware* %172, %struct.firmware** %2, align 8
  br label %173

173:                                              ; preds = %168, %152, %98, %81, %70, %51, %20
  %174 = load %struct.firmware*, %struct.firmware** %2, align 8
  ret %struct.firmware* %174
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @netif_err(%struct.nic*, i32, i32, i8*, i8*, i32, ...) #1

declare dso_local %struct.firmware* @ERR_PTR(i32) #1

declare dso_local i32 @netif_info(%struct.nic*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
