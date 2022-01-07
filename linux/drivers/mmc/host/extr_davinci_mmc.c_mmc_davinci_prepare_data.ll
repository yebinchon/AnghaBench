; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_prepare_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_davinci_host = type { i64, i32, i32, %struct.mmc_data*, i32, i32, i64, i32*, i64, i32, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mmc_request = type { %struct.mmc_data* }

@rw_threshold = common dso_local global i32 0, align 4
@MMCFIFOCTL_FIFOLEV = common dso_local global i32 0, align 4
@MMC_CTLR_VERSION_2 = common dso_local global i64 0, align 8
@DAVINCI_MMC_DATADIR_NONE = common dso_local global i32 0, align 4
@DAVINCI_MMCBLEN = common dso_local global i64 0, align 8
@DAVINCI_MMCNBLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s, %d blocks of %d bytes\0A\00", align 1
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"  DTO %d cycles + %d ns\0A\00", align 1
@DAVINCI_MMCTOD = common dso_local global i64 0, align 8
@DAVINCI_MMC_DATADIR_WRITE = common dso_local global i32 0, align 4
@MMCFIFOCTL_FIFODIR_WR = common dso_local global i32 0, align 4
@MMCFIFOCTL_FIFORST = common dso_local global i32 0, align 4
@DAVINCI_MMCFIFOCTL = common dso_local global i64 0, align 8
@DAVINCI_MMC_DATADIR_READ = common dso_local global i32 0, align 4
@MMCFIFOCTL_FIFODIR_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_davinci_host*, %struct.mmc_request*)* @mmc_davinci_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_davinci_prepare_data(%struct.mmc_davinci_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_davinci_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_davinci_host* %0, %struct.mmc_davinci_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load i32, i32* @rw_threshold, align 4
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @MMCFIFOCTL_FIFOLEV, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 0
  %17 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  store %struct.mmc_data* %17, %struct.mmc_data** %7, align 8
  %18 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MMC_CTLR_VERSION_2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load i32, i32* @rw_threshold, align 4
  %25 = icmp eq i32 %24, 64
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @MMCFIFOCTL_FIFOLEV, align 4
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %13
  %32 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %33 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %33, i32 0, i32 3
  store %struct.mmc_data* %32, %struct.mmc_data** %34, align 8
  %35 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %36 = icmp eq %struct.mmc_data* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = load i32, i32* @DAVINCI_MMC_DATADIR_NONE, align 4
  %39 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DAVINCI_MMCBLEN, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %48 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DAVINCI_MMCNBLK, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 0, i64 %51)
  br label %225

53:                                               ; preds = %31
  %54 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mmc_dev(i32 %56)
  %58 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MMC_DATA_WRITE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %66 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %70 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %68, i32 %71)
  %73 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %74 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mmc_dev(i32 %75)
  %77 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %81 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %85 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %88 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %91 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sdiv i32 %89, %92
  %94 = add nsw i32 %86, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp sgt i32 %95, 65535
  br i1 %96, label %97, label %98

97:                                               ; preds = %53
  store i32 65535, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %53
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %101 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DAVINCI_MMCTOD, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %107 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %110 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %109, i32 0, i32 8
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DAVINCI_MMCNBLK, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 %108, i64 %113)
  %115 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %116 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %119 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DAVINCI_MMCBLEN, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %125 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MMC_DATA_WRITE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %98
  %131 = load i32, i32* @DAVINCI_MMC_DATADIR_WRITE, align 4
  %132 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %133 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @MMCFIFOCTL_FIFODIR_WR, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @MMCFIFOCTL_FIFORST, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %140 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %139, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DAVINCI_MMCFIFOCTL, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel(i32 %138, i64 %143)
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @MMCFIFOCTL_FIFODIR_WR, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %149 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @DAVINCI_MMCFIFOCTL, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writel(i32 %147, i64 %152)
  br label %178

154:                                              ; preds = %98
  %155 = load i32, i32* @DAVINCI_MMC_DATADIR_READ, align 4
  %156 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %157 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %156, i32 0, i32 9
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @MMCFIFOCTL_FIFODIR_RD, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @MMCFIFOCTL_FIFORST, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %164 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %163, i32 0, i32 8
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @DAVINCI_MMCFIFOCTL, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @writel(i32 %162, i64 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @MMCFIFOCTL_FIFODIR_RD, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %173 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %172, i32 0, i32 8
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @DAVINCI_MMCFIFOCTL, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @writel(i32 %171, i64 %176)
  br label %178

178:                                              ; preds = %154, %130
  %179 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %180 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %179, i32 0, i32 7
  store i32* null, i32** %180, align 8
  %181 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %182 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %185 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %183, %186
  %188 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %189 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  %190 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %191 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %178
  %195 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %196 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @rw_threshold, align 4
  %199 = sub nsw i32 %198, 1
  %200 = and i32 %197, %199
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %194
  %203 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %204 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %205 = call i64 @mmc_davinci_start_dma_transfer(%struct.mmc_davinci_host* %203, %struct.mmc_data* %204)
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %209 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %208, i32 0, i32 2
  store i32 0, i32* %209, align 4
  br label %225

210:                                              ; preds = %202, %194, %178
  %211 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %212 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %215 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 4
  %216 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %217 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %216, i32 0, i32 3
  %218 = load %struct.mmc_data*, %struct.mmc_data** %217, align 8
  %219 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %222 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %221, i32 0, i32 4
  store i32 %220, i32* %222, align 8
  %223 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %3, align 8
  %224 = call i32 @mmc_davinci_sg_to_buf(%struct.mmc_davinci_host* %223)
  br label %225

225:                                              ; preds = %37, %210, %207
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @mmc_davinci_start_dma_transfer(%struct.mmc_davinci_host*, %struct.mmc_data*) #1

declare dso_local i32 @mmc_davinci_sg_to_buf(%struct.mmc_davinci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
