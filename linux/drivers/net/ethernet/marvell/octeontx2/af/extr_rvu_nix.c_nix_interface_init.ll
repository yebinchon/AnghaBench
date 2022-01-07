; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_interface_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_interface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, i32* }
%struct.rvu_pfvf = type { i32, i32, i8*, i8*, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"PF_Func 0x%x: Invalid pkind\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RVU_PFVF_FUNC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Bcast list, failed to enable PF_FUNC 0x%x\0A\00", align 1
@NIC_HW_MIN_FRS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, i32, i32)* @nix_interface_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nix_interface_init(%struct.rvu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rvu_pfvf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.rvu*, %struct.rvu** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %17, i32 %18)
  store %struct.rvu_pfvf* %19, %struct.rvu_pfvf** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @rvu_get_pf(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.rvu*, %struct.rvu** %6, align 8
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @is_pf_cgxmapped(%struct.rvu* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 128
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %156

30:                                               ; preds = %26, %4
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %119 [
    i32 129, label %32
    i32 128, label %84
  ]

32:                                               ; preds = %30
  %33 = load %struct.rvu*, %struct.rvu** %6, align 8
  %34 = getelementptr inbounds %struct.rvu, %struct.rvu* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %41 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %43 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @rvu_get_cgx_lmac_id(i32 %44, i32* %11, i32* %12)
  %46 = load %struct.rvu*, %struct.rvu** %6, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @rvu_npc_get_pkind(%struct.rvu* %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %32
  %52 = load %struct.rvu*, %struct.rvu** %6, align 8
  %53 = getelementptr inbounds %struct.rvu, %struct.rvu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %156

59:                                               ; preds = %32
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i8* @NIX_CHAN_CGX_LMAC_CHX(i32 %60, i32 %61, i32 0)
  %63 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %64 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %66 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %69 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %71 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %73 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.rvu*, %struct.rvu** %6, align 8
  %76 = call i32 @rvu_cgx_pdata(i32 %74, %struct.rvu* %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @cgx_set_pkind(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.rvu*, %struct.rvu** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %83 = call i32 @rvu_npc_set_pkind(%struct.rvu* %80, i32 %81, %struct.rvu_pfvf* %82)
  br label %119

84:                                               ; preds = %30
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @RVU_PFVF_FUNC_MASK, align 4
  %87 = and i32 %85, %86
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i8* @NIX_CHAN_LBK_CHX(i32 0, i32 %89)
  %91 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %92 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i8* @NIX_CHAN_LBK_CHX(i32 0, i32 %98)
  br label %104

100:                                              ; preds = %84
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i8* @NIX_CHAN_LBK_CHX(i32 0, i32 %102)
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi i8* [ %99, %96 ], [ %103, %100 ]
  %106 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %107 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %109 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %111 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.rvu*, %struct.rvu** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %116 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @rvu_npc_install_promisc_entry(%struct.rvu* %112, i32 %113, i32 %114, i8* %117, i32 0)
  br label %119

119:                                              ; preds = %30, %104, %59
  %120 = load %struct.rvu*, %struct.rvu** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %124 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %127 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @rvu_npc_install_ucast_entry(%struct.rvu* %120, i32 %121, i32 %122, i8* %125, i32 %128)
  %130 = load %struct.rvu*, %struct.rvu** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @nix_update_bcast_mce_list(%struct.rvu* %130, i32 %131, i32 1)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %119
  %136 = load %struct.rvu*, %struct.rvu** %6, align 8
  %137 = getelementptr inbounds %struct.rvu, %struct.rvu* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %5, align 4
  br label %156

142:                                              ; preds = %119
  %143 = load %struct.rvu*, %struct.rvu** %6, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %147 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @rvu_npc_install_bcast_match_entry(%struct.rvu* %143, i32 %144, i32 %145, i8* %148)
  %150 = load i8*, i8** @NIC_HW_MIN_FRS, align 8
  %151 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %152 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** @NIC_HW_MIN_FRS, align 8
  %154 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %155 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %142, %135, %51, %29
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_pf(i32) #1

declare dso_local i32 @is_pf_cgxmapped(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_cgx_lmac_id(i32, i32*, i32*) #1

declare dso_local i32 @rvu_npc_get_pkind(%struct.rvu*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i8* @NIX_CHAN_CGX_LMAC_CHX(i32, i32, i32) #1

declare dso_local i32 @cgx_set_pkind(i32, i32, i32) #1

declare dso_local i32 @rvu_cgx_pdata(i32, %struct.rvu*) #1

declare dso_local i32 @rvu_npc_set_pkind(%struct.rvu*, i32, %struct.rvu_pfvf*) #1

declare dso_local i8* @NIX_CHAN_LBK_CHX(i32, i32) #1

declare dso_local i32 @rvu_npc_install_promisc_entry(%struct.rvu*, i32, i32, i8*, i32) #1

declare dso_local i32 @rvu_npc_install_ucast_entry(%struct.rvu*, i32, i32, i8*, i32) #1

declare dso_local i32 @nix_update_bcast_mce_list(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_npc_install_bcast_match_entry(%struct.rvu*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
