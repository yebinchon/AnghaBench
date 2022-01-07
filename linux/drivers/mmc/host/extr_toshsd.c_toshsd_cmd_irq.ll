; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_cmd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_cmd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i64, %struct.TYPE_2__*, i64, %struct.mmc_command* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Spurious CMD irq\0A\00", align 1
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SD_RESPONSE0 = common dso_local global i64 0, align 8
@SD_RESPONSE1 = common dso_local global i64 0, align 8
@SD_RESPONSE2 = common dso_local global i64 0, align 8
@SD_RESPONSE3 = common dso_local global i64 0, align 8
@SD_RESPONSE4 = common dso_local global i64 0, align 8
@SD_RESPONSE5 = common dso_local global i64 0, align 8
@SD_RESPONSE6 = common dso_local global i64 0, align 8
@SD_RESPONSE7 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Command IRQ complete %d %d %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.toshsd_host*)* @toshsd_cmd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshsd_cmd_irq(%struct.toshsd_host* %0) #0 {
  %2 = alloca %struct.toshsd_host*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.toshsd_host* %0, %struct.toshsd_host** %2, align 8
  %6 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %7 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %6, i32 0, i32 3
  %8 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  store %struct.mmc_command* %8, %struct.mmc_command** %3, align 8
  %9 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %10 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %9, i32 0, i32 3
  %11 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  %12 = icmp ne %struct.mmc_command* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %15 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %210

19:                                               ; preds = %1
  %20 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %4, align 8
  %24 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %25 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %24, i32 0, i32 3
  store %struct.mmc_command* null, %struct.mmc_command** %25, align 8
  %26 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %150

32:                                               ; preds = %19
  %33 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MMC_RSP_136, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %150

39:                                               ; preds = %32
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 12
  store i32 255, i32* %41, align 4
  %42 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %43 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SD_RESPONSE0, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @ioread16(i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 255
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 13
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 8
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 14
  store i32 %53, i32* %55, align 4
  %56 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %57 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SD_RESPONSE1, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @ioread16(i64 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 15
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 8
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %71 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SD_RESPONSE2, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @ioread16(i64 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 255
  %78 = load i32*, i32** %4, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 9
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = ashr i32 %80, 8
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 10
  store i32 %81, i32* %83, align 4
  %84 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %85 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SD_RESPONSE3, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @ioread16(i64 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, 255
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 11
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %5, align 4
  %95 = ashr i32 %94, 8
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %99 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SD_RESPONSE4, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @ioread16(i64 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, 255
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %5, align 4
  %109 = ashr i32 %108, 8
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %113 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SD_RESPONSE5, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @ioread16(i64 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, 255
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 7
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %5, align 4
  %123 = ashr i32 %122, 8
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %127 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SD_RESPONSE6, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @ioread16(i64 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, 255
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %5, align 4
  %137 = ashr i32 %136, 8
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %141 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SD_RESPONSE7, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @ioread16(i64 %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, 255
  %148 = load i32*, i32** %4, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  store i32 %147, i32* %149, align 4
  br label %187

150:                                              ; preds = %32, %19
  %151 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %152 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %186

157:                                              ; preds = %150
  %158 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %159 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @SD_RESPONSE0, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @ioread16(i64 %162)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = and i32 %164, 255
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %5, align 4
  %169 = ashr i32 %168, 8
  %170 = load i32*, i32** %4, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %173 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @SD_RESPONSE1, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @ioread16(i64 %176)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, 255
  %180 = load i32*, i32** %4, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %5, align 4
  %183 = ashr i32 %182, 8
  %184 = load i32*, i32** %4, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %157, %150
  br label %187

187:                                              ; preds = %186, %39
  %188 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %189 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %188, i32 0, i32 1
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %193 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %196 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %199 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @dev_dbg(i32* %191, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %194, i32 %197, i32 %200)
  %202 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %203 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %187
  br label %210

207:                                              ; preds = %187
  %208 = load %struct.toshsd_host*, %struct.toshsd_host** %2, align 8
  %209 = call i32 @toshsd_finish_request(%struct.toshsd_host* %208)
  br label %210

210:                                              ; preds = %207, %206, %13
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @toshsd_finish_request(%struct.toshsd_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
