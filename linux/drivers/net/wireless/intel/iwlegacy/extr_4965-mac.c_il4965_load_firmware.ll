; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i8* }
%struct.firmware = type { i32, i64 }
%struct.il4965_firmware_pieces = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.il_ucode_header = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"File size too small!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"uCode file size %d does not match expected size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.firmware*, %struct.il4965_firmware_pieces*)* @il4965_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_load_firmware(%struct.il_priv* %0, %struct.firmware* %1, %struct.il4965_firmware_pieces* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.il4965_firmware_pieces*, align 8
  %8 = alloca %struct.il_ucode_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store %struct.il4965_firmware_pieces* %2, %struct.il4965_firmware_pieces** %7, align 8
  %12 = load %struct.firmware*, %struct.firmware** %6, align 8
  %13 = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.il_ucode_header*
  store %struct.il_ucode_header* %16, %struct.il_ucode_header** %8, align 8
  %17 = load %struct.il_ucode_header*, %struct.il_ucode_header** %8, align 8
  %18 = getelementptr inbounds %struct.il_ucode_header, %struct.il_ucode_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @le32_to_cpu(i32 %19)
  %21 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @IL_UCODE_API(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %28 [
    i32 0, label %29
    i32 1, label %29
    i32 2, label %29
  ]

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %3, %3, %3, %28
  store i32 24, i32* %10, align 4
  %30 = load %struct.firmware*, %struct.firmware** %6, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %163

39:                                               ; preds = %29
  %40 = load %struct.il_ucode_header*, %struct.il_ucode_header** %8, align 8
  %41 = getelementptr inbounds %struct.il_ucode_header, %struct.il_ucode_header* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @le32_to_cpu(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %47 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.il_ucode_header*, %struct.il_ucode_header** %8, align 8
  %49 = getelementptr inbounds %struct.il_ucode_header, %struct.il_ucode_header* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le32_to_cpu(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %55 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.il_ucode_header*, %struct.il_ucode_header** %8, align 8
  %57 = getelementptr inbounds %struct.il_ucode_header, %struct.il_ucode_header* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @le32_to_cpu(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %63 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.il_ucode_header*, %struct.il_ucode_header** %8, align 8
  %65 = getelementptr inbounds %struct.il_ucode_header, %struct.il_ucode_header* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %71 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.il_ucode_header*, %struct.il_ucode_header** %8, align 8
  %73 = getelementptr inbounds %struct.il_ucode_header, %struct.il_ucode_header* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @le32_to_cpu(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %79 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.il_ucode_header*, %struct.il_ucode_header** %8, align 8
  %81 = getelementptr inbounds %struct.il_ucode_header, %struct.il_ucode_header* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %11, align 8
  br label %84

84:                                               ; preds = %39
  %85 = load %struct.firmware*, %struct.firmware** %6, align 8
  %86 = getelementptr inbounds %struct.firmware, %struct.firmware* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %90 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  %93 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %94 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %92, %95
  %97 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %98 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %96, %99
  %101 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %102 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %106 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %104, %107
  %109 = icmp ne i32 %87, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %84
  %111 = load %struct.firmware*, %struct.firmware** %6, align 8
  %112 = getelementptr inbounds %struct.firmware, %struct.firmware* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %163

117:                                              ; preds = %84
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %120 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %119, i32 0, i32 9
  store i32* %118, i32** %120, align 8
  %121 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %122 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %11, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %129 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %128, i32 0, i32 8
  store i32* %127, i32** %129, align 8
  %130 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %131 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %11, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %138 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %137, i32 0, i32 7
  store i32* %136, i32** %138, align 8
  %139 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %140 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %11, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %147 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %146, i32 0, i32 6
  store i32* %145, i32** %147, align 8
  %148 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %149 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %11, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %11, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %156 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %155, i32 0, i32 5
  store i32* %154, i32** %156, align 8
  %157 = load %struct.il4965_firmware_pieces*, %struct.il4965_firmware_pieces** %7, align 8
  %158 = getelementptr inbounds %struct.il4965_firmware_pieces, %struct.il4965_firmware_pieces* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %11, align 8
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %117, %110, %35
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @IL_UCODE_API(i8*) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
