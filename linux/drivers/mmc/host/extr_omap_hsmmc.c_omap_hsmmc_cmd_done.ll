; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, %struct.TYPE_4__*, i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_command = type { i32, i64, i8** }

@AUTO_CMD23 = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@RSP10 = common dso_local global i32 0, align 4
@RSP32 = common dso_local global i32 0, align 4
@RSP54 = common dso_local global i32 0, align 4
@RSP76 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, %struct.mmc_command*)* @omap_hsmmc_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_cmd_done(%struct.omap_hsmmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %5 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %54

11:                                               ; preds = %2
  %12 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %12, i32 0, i32 5
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %14, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %11
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %21
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AUTO_CMD23, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %30
  %38 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %38, i32 0, i32 5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %39, align 8
  %40 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %41 = call i32 @omap_hsmmc_start_dma_transfer(%struct.omap_hsmmc_host* %40)
  %42 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %43 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %44 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host* %42, i32 %47, i32 %52)
  br label %139

54:                                               ; preds = %30, %21, %11, %2
  %55 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %56 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %55, i32 0, i32 5
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %56, align 8
  %57 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %118

63:                                               ; preds = %54
  %64 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MMC_RSP_136, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %107

70:                                               ; preds = %63
  %71 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %72 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RSP10, align 4
  %75 = call i8* @OMAP_HSMMC_READ(i32 %73, i32 %74)
  %76 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %77 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 3
  store i8* %75, i8** %79, align 8
  %80 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %81 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @RSP32, align 4
  %84 = call i8* @OMAP_HSMMC_READ(i32 %82, i32 %83)
  %85 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %86 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %85, i32 0, i32 2
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  store i8* %84, i8** %88, align 8
  %89 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %90 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RSP54, align 4
  %93 = call i8* @OMAP_HSMMC_READ(i32 %91, i32 %92)
  %94 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %94, i32 0, i32 2
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8* %93, i8** %97, align 8
  %98 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %99 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @RSP76, align 4
  %102 = call i8* @OMAP_HSMMC_READ(i32 %100, i32 %101)
  %103 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %104 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  store i8* %102, i8** %106, align 8
  br label %117

107:                                              ; preds = %63
  %108 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %109 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RSP10, align 4
  %112 = call i8* @OMAP_HSMMC_READ(i32 %110, i32 %111)
  %113 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %114 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %113, i32 0, i32 2
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  store i8* %112, i8** %116, align 8
  br label %117

117:                                              ; preds = %107, %70
  br label %118

118:                                              ; preds = %117, %54
  %119 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %120 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %125 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123, %118
  %129 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128, %123
  %134 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %135 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %136 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = call i32 @omap_hsmmc_request_done(%struct.omap_hsmmc_host* %134, %struct.TYPE_4__* %137)
  br label %139

139:                                              ; preds = %37, %133, %128
  ret void
}

declare dso_local i32 @omap_hsmmc_start_dma_transfer(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @omap_hsmmc_start_command(%struct.omap_hsmmc_host*, i32, i32) #1

declare dso_local i8* @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @omap_hsmmc_request_done(%struct.omap_hsmmc_host*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
