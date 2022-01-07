; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_lag_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_lag_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, i32, i32 }

@MLXSW_REG_SLCR_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_LAG_SEED_INIT = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_SMAC = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_DMAC = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_ETHERTYPE = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_VLANID = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_SIP = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_DIP = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_SPORT = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_DPORT = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_LAG_HASH_IPPROTO = common dso_local global i32 0, align 4
@slcr = common dso_local global i32 0, align 4
@MAX_LAG = common dso_local global i32 0, align 4
@MAX_LAG_MEMBERS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_lag_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_lag_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %9 = load i32, i32* @MLXSW_REG_SLCR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MLXSW_SP_LAG_SEED_INIT, align 4
  %17 = call i32 @jhash(i32 %15, i32 4, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_SMAC, align 4
  %19 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_DMAC, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_ETHERTYPE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_VLANID, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_SIP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_DIP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_SPORT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_DPORT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MLXSW_REG_SLCR_LAG_HASH_IPPROTO, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mlxsw_reg_slcr_pack(i8* %12, i32 %34, i32 %35)
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @slcr, align 4
  %41 = call i32 @MLXSW_REG(i32 %40)
  %42 = call i32 @mlxsw_reg_write(i32 %39, i32 %41, i8* %12)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

47:                                               ; preds = %1
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MAX_LAG, align 4
  %52 = call i32 @MLXSW_CORE_RES_VALID(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX_LAG_MEMBERS, align 4
  %59 = call i32 @MLXSW_CORE_RES_VALID(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54, %47
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

64:                                               ; preds = %54
  %65 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MAX_LAG, align 4
  %69 = call i32 @MLXSW_CORE_RES_GET(i32 %67, i32 %68)
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i32 @kcalloc(i32 %69, i32 4, i32 %70)
  %72 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %64
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

81:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %78, %61, %45
  %83 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @jhash(i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_slcr_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @MLXSW_CORE_RES_VALID(i32, i32) #2

declare dso_local i32 @kcalloc(i32, i32, i32) #2

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
