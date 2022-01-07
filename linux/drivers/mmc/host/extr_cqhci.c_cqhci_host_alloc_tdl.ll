; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_host_alloc_tdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cqhci.c_cqhci_host_alloc_tdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cqhci_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8*, i32*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@CQHCI_TASK_DESC_SZ_128 = common dso_local global i32 0, align 4
@CQHCI_CFG = common dso_local global i32 0, align 4
@CQHCI_TASK_DESC_SZ = common dso_local global i32 0, align 4
@CQHCI_QUIRK_SHORT_TXFR_DESC_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: cqhci: desc_size: %zu data_sz: %zu slot-sz: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"%s: cqhci: desc-base: 0x%p trans-base: 0x%p\0A desc_dma 0x%llx trans_dma: 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cqhci_host*)* @cqhci_host_alloc_tdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqhci_host_alloc_tdl(%struct.cqhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cqhci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.cqhci_host* %0, %struct.cqhci_host** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %6 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CQHCI_TASK_DESC_SZ_128, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %13 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %14 = load i32, i32* @CQHCI_CFG, align 4
  %15 = call i32 @cqhci_readl(%struct.cqhci_host* %13, i32 %14)
  %16 = load i32, i32* @CQHCI_TASK_DESC_SZ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CQHCI_CFG, align 4
  %19 = call i32 @cqhci_writel(%struct.cqhci_host* %12, i32 %17, i32 %18)
  %20 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %21 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %20, i32 0, i32 1
  store i32 16, i32* %21, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %24 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %23, i32 0, i32 1
  store i32 8, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %11
  %26 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %27 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %26, i32 0, i32 14
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %32 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CQHCI_QUIRK_SHORT_TXFR_DESC_SZ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %39 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %38, i32 0, i32 3
  store i32 12, i32* %39, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %42 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %41, i32 0, i32 3
  store i32 16, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %45 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %44, i32 0, i32 4
  store i32 16, i32* %45, align 8
  br label %51

46:                                               ; preds = %25
  %47 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %48 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %47, i32 0, i32 3
  store i32 8, i32* %48, align 4
  %49 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %50 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %49, i32 0, i32 4
  store i32 8, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %53 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %56 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %54, %57
  %59 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %60 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %62 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %65 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %69 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %71 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %74 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %73, i32 0, i32 13
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %72, %77
  %79 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %80 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %79, i32 0, i32 13
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %78, %83
  %85 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %86 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %88 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %87, i32 0, i32 13
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = call i32 @mmc_hostname(%struct.TYPE_3__* %89)
  %91 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %92 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %95 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %98 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 (i8*, i32, i32, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i64 %100)
  %102 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %103 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %102, i32 0, i32 13
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = call i32 @mmc_dev(%struct.TYPE_3__* %104)
  %106 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %107 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %110 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %109, i32 0, i32 10
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i8* @dmam_alloc_coherent(i32 %105, i32 %108, i64* %110, i32 %111)
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %115 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %114, i32 0, i32 12
  store i32* %113, i32** %115, align 8
  %116 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %117 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %116, i32 0, i32 12
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %51
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %196

123:                                              ; preds = %51
  %124 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %125 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %124, i32 0, i32 13
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = call i32 @mmc_dev(%struct.TYPE_3__* %126)
  %128 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %129 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %132 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %131, i32 0, i32 9
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @dmam_alloc_coherent(i32 %127, i32 %130, i64* %132, i32 %133)
  %135 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %136 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %135, i32 0, i32 11
  store i8* %134, i8** %136, align 8
  %137 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %138 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %137, i32 0, i32 11
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %162, label %141

141:                                              ; preds = %123
  %142 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %143 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %142, i32 0, i32 13
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = call i32 @mmc_dev(%struct.TYPE_3__* %144)
  %146 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %147 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %150 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %149, i32 0, i32 12
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %153 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %152, i32 0, i32 10
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @dmam_free_coherent(i32 %145, i32 %148, i32* %151, i64 %154)
  %156 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %157 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %156, i32 0, i32 12
  store i32* null, i32** %157, align 8
  %158 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %159 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %158, i32 0, i32 10
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %196

162:                                              ; preds = %123
  %163 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %164 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %163, i32 0, i32 13
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = call i32 @mmc_hostname(%struct.TYPE_3__* %165)
  %167 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %168 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %167, i32 0, i32 12
  %169 = load i32*, i32** %168, align 8
  %170 = ptrtoint i32* %169 to i32
  %171 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %172 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %171, i32 0, i32 11
  %173 = load i8*, i8** %172, align 8
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %176 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %175, i32 0, i32 10
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %179 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %178, i32 0, i32 9
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i8*, i32, i32, i32, i64, ...) @pr_debug(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %170, i32 %174, i64 %177, i64 %180)
  br label %182

182:                                              ; preds = %192, %162
  %183 = load i32, i32* %4, align 4
  %184 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %185 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %182
  %189 = load %struct.cqhci_host*, %struct.cqhci_host** %3, align 8
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @setup_trans_desc(%struct.cqhci_host* %189, i32 %190)
  br label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %182

195:                                              ; preds = %182
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %141, %120
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @cqhci_writel(%struct.cqhci_host*, i32, i32) #1

declare dso_local i32 @cqhci_readl(%struct.cqhci_host*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i64, ...) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_3__*) #1

declare dso_local i8* @dmam_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @dmam_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @setup_trans_desc(%struct.cqhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
