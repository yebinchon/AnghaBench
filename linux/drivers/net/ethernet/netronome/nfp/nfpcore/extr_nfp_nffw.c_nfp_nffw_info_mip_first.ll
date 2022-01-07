; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nffw.c_nfp_nffw_info_mip_first.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nffw.c_nfp_nffw_info_mip_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nffw_info = type { i32 }
%struct.nffw_fwinfo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFP_MU_ADDR_ACCESS_TYPE_MASK = common dso_local global i32 0, align 4
@NFP_MU_ADDR_ACCESS_TYPE_DIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_nffw_info_mip_first(%struct.nfp_nffw_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_nffw_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nffw_fwinfo*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_nffw_info* %0, %struct.nfp_nffw_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %11 = call %struct.nffw_fwinfo* @nfp_nffw_info_fwid_first(%struct.nfp_nffw_info* %10)
  store %struct.nffw_fwinfo* %11, %struct.nffw_fwinfo** %8, align 8
  %12 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %8, align 8
  %13 = icmp ne %struct.nffw_fwinfo* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %8, align 8
  %19 = call i32 @nffw_fwinfo_mip_cppid_get(%struct.nffw_fwinfo* %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %8, align 8
  %22 = call i32 @nffw_fwinfo_mip_offset_get(%struct.nffw_fwinfo* %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.nffw_fwinfo*, %struct.nffw_fwinfo** %8, align 8
  %25 = call i64 @nffw_fwinfo_mip_mu_da_get(%struct.nffw_fwinfo* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %17
  %28 = load %struct.nfp_nffw_info*, %struct.nfp_nffw_info** %5, align 8
  %29 = getelementptr inbounds %struct.nfp_nffw_info, %struct.nfp_nffw_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nfp_cpp_mu_locality_lsb(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @NFP_MU_ADDR_ACCESS_TYPE_MASK, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @NFP_MU_ADDR_ACCESS_TYPE_DIRECT, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %39, %40
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %27, %17
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.nffw_fwinfo* @nfp_nffw_info_fwid_first(%struct.nfp_nffw_info*) #1

declare dso_local i32 @nffw_fwinfo_mip_cppid_get(%struct.nffw_fwinfo*) #1

declare dso_local i32 @nffw_fwinfo_mip_offset_get(%struct.nffw_fwinfo*) #1

declare dso_local i64 @nffw_fwinfo_mip_mu_da_get(%struct.nffw_fwinfo*) #1

declare dso_local i32 @nfp_cpp_mu_locality_lsb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
