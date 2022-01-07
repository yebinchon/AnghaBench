; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxs-mmc.c_mxs_mmc_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_mmc_host = type { i32, %struct.mmc_request*, %struct.mmc_data*, %struct.mxs_ssp, %struct.mmc_command* }
%struct.mmc_request = type { i32, %struct.mmc_command*, i32 }
%struct.mmc_data = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.mxs_ssp = type { i32, i64 }
%struct.mmc_command = type { i8** }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_mmc_host*)* @mxs_mmc_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_mmc_request_done(%struct.mxs_mmc_host* %0) #0 {
  %2 = alloca %struct.mxs_mmc_host*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mxs_ssp*, align 8
  store %struct.mxs_mmc_host* %0, %struct.mxs_mmc_host** %2, align 8
  %7 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %7, i32 0, i32 4
  %9 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  store %struct.mmc_command* %9, %struct.mmc_command** %3, align 8
  %10 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %10, i32 0, i32 2
  %12 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  store %struct.mmc_data* %12, %struct.mmc_data** %4, align 8
  %13 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %14 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %13, i32 0, i32 1
  %15 = load %struct.mmc_request*, %struct.mmc_request** %14, align 8
  store %struct.mmc_request* %15, %struct.mmc_request** %5, align 8
  %16 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %16, i32 0, i32 3
  store %struct.mxs_ssp* %17, %struct.mxs_ssp** %6, align 8
  %18 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %19 = call i32 @mmc_resp_type(%struct.mmc_command* %18)
  %20 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %1
  %24 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %25 = call i32 @mmc_resp_type(%struct.mmc_command* %24)
  %26 = load i32, i32* @MMC_RSP_136, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %74

29:                                               ; preds = %23
  %30 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %31 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %34 = call i64 @HW_SSP_SDRESP0(%struct.mxs_ssp* %33)
  %35 = add nsw i64 %32, %34
  %36 = call i8* @readl(i64 %35)
  %37 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  store i8* %36, i8** %40, align 8
  %41 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %42 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %45 = call i64 @HW_SSP_SDRESP1(%struct.mxs_ssp* %44)
  %46 = add nsw i64 %43, %45
  %47 = call i8* @readl(i64 %46)
  %48 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 2
  store i8* %47, i8** %51, align 8
  %52 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %53 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %56 = call i64 @HW_SSP_SDRESP2(%struct.mxs_ssp* %55)
  %57 = add nsw i64 %54, %56
  %58 = call i8* @readl(i64 %57)
  %59 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* %58, i8** %62, align 8
  %63 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %64 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %67 = call i64 @HW_SSP_SDRESP3(%struct.mxs_ssp* %66)
  %68 = add nsw i64 %65, %67
  %69 = call i8* @readl(i64 %68)
  %70 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  store i8* %69, i8** %73, align 8
  br label %86

74:                                               ; preds = %23
  %75 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %76 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %79 = call i64 @HW_SSP_SDRESP0(%struct.mxs_ssp* %78)
  %80 = add nsw i64 %77, %79
  %81 = call i8* @readl(i64 %80)
  %82 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  store i8* %81, i8** %85, align 8
  br label %86

86:                                               ; preds = %74, %29
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %89 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %90 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %89, i32 0, i32 1
  %91 = load %struct.mmc_command*, %struct.mmc_command** %90, align 8
  %92 = icmp eq %struct.mmc_command* %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %95 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %96 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mxs_mmc_start_cmd(%struct.mxs_mmc_host* %94, i32 %97)
  br label %167

99:                                               ; preds = %87
  %100 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %101 = icmp ne %struct.mmc_data* %100, null
  br i1 %101, label %102, label %158

102:                                              ; preds = %99
  %103 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %104 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @mmc_dev(i32 %105)
  %107 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %108 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %111 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.mxs_ssp*, %struct.mxs_ssp** %6, align 8
  %114 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dma_unmap_sg(i32 %106, i32 %109, i32 %112, i32 %115)
  %117 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %118 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %102
  %122 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %123 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %126 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  %129 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %134

131:                                              ; preds = %102
  %132 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %133 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %121
  %135 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %136 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %135, i32 0, i32 2
  store %struct.mmc_data* null, %struct.mmc_data** %136, align 8
  %137 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %138 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %134
  %142 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %143 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %148 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %147, i32 0, i32 1
  %149 = load %struct.mmc_command*, %struct.mmc_command** %148, align 8
  %150 = icmp ne %struct.mmc_command* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %146, %141
  %152 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %153 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %154 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @mxs_mmc_start_cmd(%struct.mxs_mmc_host* %152, i32 %155)
  br label %167

157:                                              ; preds = %146, %134
  br label %158

158:                                              ; preds = %157, %99
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %161 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %160, i32 0, i32 1
  store %struct.mmc_request* null, %struct.mmc_request** %161, align 8
  %162 = load %struct.mxs_mmc_host*, %struct.mxs_mmc_host** %2, align 8
  %163 = getelementptr inbounds %struct.mxs_mmc_host, %struct.mxs_mmc_host* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %166 = call i32 @mmc_request_done(i32 %164, %struct.mmc_request* %165)
  br label %167

167:                                              ; preds = %159, %151, %93
  ret void
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i64 @HW_SSP_SDRESP0(%struct.mxs_ssp*) #1

declare dso_local i64 @HW_SSP_SDRESP1(%struct.mxs_ssp*) #1

declare dso_local i64 @HW_SSP_SDRESP2(%struct.mxs_ssp*) #1

declare dso_local i64 @HW_SSP_SDRESP3(%struct.mxs_ssp*) #1

declare dso_local i32 @mxs_mmc_start_cmd(%struct.mxs_mmc_host*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
