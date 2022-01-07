; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap.c_mmc_omap_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, %struct.mmc_host*, i32*, i32*, i32, i32* }
%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32*, i32, i64 }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@RSP0 = common dso_local global i32 0, align 4
@RSP1 = common dso_local global i32 0, align 4
@RSP2 = common dso_local global i32 0, align 4
@RSP3 = common dso_local global i32 0, align 4
@RSP4 = common dso_local global i32 0, align 4
@RSP5 = common dso_local global i32 0, align 4
@RSP6 = common dso_local global i32 0, align 4
@RSP7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_command*)* @mmc_omap_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_cmd_done(%struct.mmc_omap_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %6 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %6, i32 0, i32 5
  store i32* null, i32** %7, align 8
  %8 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %8, i32 0, i32 4
  %10 = call i32 @del_timer(i32* %9)
  %11 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %2
  %18 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MMC_RSP_136, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %17
  %25 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %26 = load i32, i32* @RSP0, align 4
  %27 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %25, i32 %26)
  %28 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %29 = load i32, i32* @RSP1, align 4
  %30 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %28, i32 %29)
  %31 = shl i32 %30, 16
  %32 = or i32 %27, %31
  %33 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 %32, i32* %36, align 4
  %37 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %38 = load i32, i32* @RSP2, align 4
  %39 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %37, i32 %38)
  %40 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %41 = load i32, i32* @RSP3, align 4
  %42 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %40, i32 %41)
  %43 = shl i32 %42, 16
  %44 = or i32 %39, %43
  %45 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %50 = load i32, i32* @RSP4, align 4
  %51 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %49, i32 %50)
  %52 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %53 = load i32, i32* @RSP5, align 4
  %54 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %52, i32 %53)
  %55 = shl i32 %54, 16
  %56 = or i32 %51, %55
  %57 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %62 = load i32, i32* @RSP6, align 4
  %63 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %61, i32 %62)
  %64 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %65 = load i32, i32* @RSP7, align 4
  %66 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %64, i32 %65)
  %67 = shl i32 %66, 16
  %68 = or i32 %63, %67
  %69 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %70 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %68, i32* %72, align 4
  br label %86

73:                                               ; preds = %17
  %74 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %75 = load i32, i32* @RSP6, align 4
  %76 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %74, i32 %75)
  %77 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %78 = load i32, i32* @RSP7, align 4
  %79 = call i32 @OMAP_MMC_READ(%struct.mmc_omap_host* %77, i32 %78)
  %80 = shl i32 %79, 16
  %81 = or i32 %76, %80
  %82 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %73, %24
  br label %87

87:                                               ; preds = %86, %2
  %88 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %89 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %94 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %92, %87
  %98 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %104 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %105 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @mmc_omap_abort_xfer(%struct.mmc_omap_host* %103, i32* %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %110 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %109, i32 0, i32 2
  store i32* null, i32** %110, align 8
  %111 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %112 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %111, i32 0, i32 1
  %113 = load %struct.mmc_host*, %struct.mmc_host** %112, align 8
  store %struct.mmc_host* %113, %struct.mmc_host** %5, align 8
  %114 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %115 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @mmc_omap_release_slot(i32 %116, i32 1)
  %118 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %119 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %120 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @mmc_request_done(%struct.mmc_host* %118, i32 %121)
  br label %123

123:                                              ; preds = %108, %92
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @OMAP_MMC_READ(%struct.mmc_omap_host*, i32) #1

declare dso_local i32 @mmc_omap_abort_xfer(%struct.mmc_omap_host*, i32*) #1

declare dso_local i32 @mmc_omap_release_slot(i32, i32) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
