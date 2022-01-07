; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_c8sectpfe_elf_sanity_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_c8sectpfe_elf_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c8sectpfei = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.elf32_hdr = type { i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"failed to load %s\0A\00", align 1
@FIRMWARE_MEMDMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Image is too small\0A\00", align 1
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unsupported class: %d\0A\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2LSB = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unsupported firmware endianness\0A\00", align 1
@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Image is corrupted (bad magic)\0A\00", align 1
@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i8 0, align 1
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i8 0, align 1
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i8 0, align 1
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid ELF magic\0A\00", align 1
@ET_EXEC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"Unsupported ELF header type\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Firmware size is too small\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c8sectpfei*, %struct.firmware*)* @c8sectpfe_elf_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c8sectpfe_elf_sanity_check(%struct.c8sectpfei* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c8sectpfei*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.elf32_hdr*, align 8
  %7 = alloca i8, align 1
  store %struct.c8sectpfei* %0, %struct.c8sectpfei** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %8 = load %struct.firmware*, %struct.firmware** %5, align 8
  %9 = icmp ne %struct.firmware* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %12 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FIRMWARE_MEMDMA, align 4
  %15 = call i32 (i32, i8*, ...) @dev_err(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %191

18:                                               ; preds = %2
  %19 = load %struct.firmware*, %struct.firmware** %5, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 32
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %26 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %191

31:                                               ; preds = %18
  %32 = load %struct.firmware*, %struct.firmware** %5, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %35, %struct.elf32_hdr** %6, align 8
  %36 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* @EI_CLASS, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %7, align 1
  %42 = load i8, i8* %7, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @ELFCLASS32, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %31
  %48 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %49 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8, i8* %7, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %191

56:                                               ; preds = %31
  %57 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* @EI_DATA, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @ELFDATA2LSB, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %69 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %191

74:                                               ; preds = %56
  %75 = load %struct.firmware*, %struct.firmware** %5, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %80 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, 4
  %83 = icmp ult i64 %78, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %86 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %191

91:                                               ; preds = %74
  %92 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %93 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @ELFMAG, align 4
  %96 = load i32, i32* @SELFMAG, align 4
  %97 = call i64 @memcmp(i8* %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %101 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %191

106:                                              ; preds = %91
  %107 = load %struct.firmware*, %struct.firmware** %5, align 8
  %108 = getelementptr inbounds %struct.firmware, %struct.firmware* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %110, %struct.elf32_hdr** %6, align 8
  %111 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %112 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i64, i64* @EI_MAG0, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8, i8* @ELFMAG0, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %154, label %121

121:                                              ; preds = %106
  %122 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %123 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i64, i64* @EI_MAG1, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8, i8* @ELFMAG1, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %154, label %132

132:                                              ; preds = %121
  %133 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %134 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i64, i64* @EI_MAG2, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8, i8* @ELFMAG2, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %139, %141
  br i1 %142, label %154, label %143

143:                                              ; preds = %132
  %144 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %145 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i64, i64* @EI_MAG3, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i8, i8* @ELFMAG3, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %143, %132, %121, %106
  %155 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %156 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32, i8*, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %191

161:                                              ; preds = %143
  %162 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %163 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @ET_EXEC, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %169 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32, i8*, ...) @dev_err(i32 %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %191

174:                                              ; preds = %161
  %175 = load %struct.elf32_hdr*, %struct.elf32_hdr** %6, align 8
  %176 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.firmware*, %struct.firmware** %5, align 8
  %179 = getelementptr inbounds %struct.firmware, %struct.firmware* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = icmp sgt i64 %177, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %174
  %184 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %185 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, ...) @dev_err(i32 %186, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %191

190:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %183, %167, %154, %99, %84, %67, %47, %24, %10
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
