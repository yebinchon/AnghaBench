; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nffw.c_nffw_res_fwinfos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nffw.c_nffw_res_fwinfos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nffw_info_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.nffw_fwinfo* }
%struct.nffw_fwinfo = type { i32 }
%struct.TYPE_4__ = type { %struct.nffw_fwinfo* }

@NFFW_FWINFO_CNT_V1 = common dso_local global i32 0, align 4
@NFFW_FWINFO_CNT_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_nffw_info_data*, %struct.nffw_fwinfo**)* @nffw_res_fwinfos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nffw_res_fwinfos(%struct.nfp_nffw_info_data* %0, %struct.nffw_fwinfo** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_nffw_info_data*, align 8
  %5 = alloca %struct.nffw_fwinfo**, align 8
  store %struct.nfp_nffw_info_data* %0, %struct.nfp_nffw_info_data** %4, align 8
  store %struct.nffw_fwinfo** %1, %struct.nffw_fwinfo*** %5, align 8
  %6 = load %struct.nfp_nffw_info_data*, %struct.nfp_nffw_info_data** %4, align 8
  %7 = call i32 @nffw_res_info_version_get(%struct.nfp_nffw_info_data* %6)
  switch i32 %7, label %26 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %17
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.nfp_nffw_info_data*, %struct.nfp_nffw_info_data** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_nffw_info_data, %struct.nfp_nffw_info_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %12, align 8
  %14 = getelementptr inbounds %struct.nffw_fwinfo, %struct.nffw_fwinfo* %13, i64 0
  %15 = load %struct.nffw_fwinfo**, %struct.nffw_fwinfo*** %5, align 8
  store %struct.nffw_fwinfo* %14, %struct.nffw_fwinfo** %15, align 8
  %16 = load i32, i32* @NFFW_FWINFO_CNT_V1, align 4
  store i32 %16, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.nfp_nffw_info_data*, %struct.nfp_nffw_info_data** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_nffw_info_data, %struct.nfp_nffw_info_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %21, align 8
  %23 = getelementptr inbounds %struct.nffw_fwinfo, %struct.nffw_fwinfo* %22, i64 0
  %24 = load %struct.nffw_fwinfo**, %struct.nffw_fwinfo*** %5, align 8
  store %struct.nffw_fwinfo* %23, %struct.nffw_fwinfo** %24, align 8
  %25 = load i32, i32* @NFFW_FWINFO_CNT_V2, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load %struct.nffw_fwinfo**, %struct.nffw_fwinfo*** %5, align 8
  store %struct.nffw_fwinfo* null, %struct.nffw_fwinfo** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %17, %8
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @nffw_res_info_version_get(%struct.nfp_nffw_info_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
