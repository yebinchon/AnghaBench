; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_shared_buf.c_nfp_shared_buf_pool_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_shared_buf.c_nfp_shared_buf_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.devlink_sb_pool_info = type { i32, i32, i32, i32 }
%struct.nfp_shared_buf_pool_info_get = type { i32, i32, i32 }
%struct.nfp_shared_buf_pool_id = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFP_MBOX_POOL_GET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_shared_buf_pool_get(%struct.nfp_pf* %0, i32 %1, i32 %2, %struct.devlink_sb_pool_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.devlink_sb_pool_info*, align 8
  %10 = alloca %struct.nfp_shared_buf_pool_info_get, align 4
  %11 = alloca %struct.nfp_shared_buf_pool_id, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.devlink_sb_pool_info* %3, %struct.devlink_sb_pool_info** %9, align 8
  %14 = getelementptr inbounds %struct.nfp_shared_buf_pool_id, %struct.nfp_shared_buf_pool_id* %11, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @cpu_to_le32(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.nfp_shared_buf_pool_id, %struct.nfp_shared_buf_pool_id* %11, i32 0, i32 1
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @cpu_to_le32(i32 %18)
  store i32 %19, i32* %17, align 4
  %20 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @nfp_shared_buf_pool_unit(%struct.nfp_pf* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %64

28:                                               ; preds = %4
  %29 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %30 = load i32, i32* @NFP_MBOX_POOL_GET, align 4
  %31 = call i32 @nfp_mbox_cmd(%struct.nfp_pf* %29, i32 %30, %struct.nfp_shared_buf_pool_id* %11, i32 8, %struct.nfp_shared_buf_pool_info_get* %10, i32 12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %64

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 12
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %64

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.nfp_shared_buf_pool_info_get, %struct.nfp_shared_buf_pool_info_get* %10, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load %struct.devlink_sb_pool_info*, %struct.devlink_sb_pool_info** %9, align 8
  %48 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.nfp_shared_buf_pool_info_get, %struct.nfp_shared_buf_pool_info_get* %10, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load %struct.devlink_sb_pool_info*, %struct.devlink_sb_pool_info** %9, align 8
  %53 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.nfp_shared_buf_pool_info_get, %struct.nfp_shared_buf_pool_info_get* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = mul i32 %56, %57
  %59 = load %struct.devlink_sb_pool_info*, %struct.devlink_sb_pool_info** %9, align 8
  %60 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.devlink_sb_pool_info*, %struct.devlink_sb_pool_info** %9, align 8
  %63 = getelementptr inbounds %struct.devlink_sb_pool_info, %struct.devlink_sb_pool_info* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %43, %40, %34, %25
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @nfp_shared_buf_pool_unit(%struct.nfp_pf*, i32) #1

declare dso_local i32 @nfp_mbox_cmd(%struct.nfp_pf*, i32, %struct.nfp_shared_buf_pool_id*, i32, %struct.nfp_shared_buf_pool_info_get*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
