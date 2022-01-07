; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_flood_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_flood_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_SFGC_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_SGCR_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_SFTR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_REG_SFGC_TABLE_TYPE_SINGLE = common dso_local global i32 0, align 4
@MLXSW_PORT_CPU_PORT = common dso_local global i32 0, align 4
@sftr = common dso_local global i32 0, align 4
@MLXSW_REG_SFGC_TYPE_UNKNOWN_UNICAST = common dso_local global i32 0, align 4
@MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID = common dso_local global i32 0, align 4
@sfgc = common dso_local global i32 0, align 4
@MLXSW_REG_SFGC_TYPE_BROADCAST = common dso_local global i32 0, align 4
@MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_NON_IP = common dso_local global i32 0, align 4
@MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV6 = common dso_local global i32 0, align 4
@MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV4 = common dso_local global i32 0, align 4
@sgcr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx*)* @mlxsw_sx_flood_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_flood_init(%struct.mlxsw_sx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sx* %0, %struct.mlxsw_sx** %3, align 8
  %10 = load i32, i32* @MLXSW_REG_SFGC_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @MLXSW_REG_SGCR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = load i32, i32* @MLXSW_REG_SFTR_LEN, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %126

25:                                               ; preds = %1
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @MLXSW_REG_SFGC_TABLE_TYPE_SINGLE, align 4
  %28 = load i32, i32* @MLXSW_PORT_CPU_PORT, align 4
  %29 = call i32 @mlxsw_reg_sftr_pack(i8* %26, i32 0, i32 0, i32 %27, i32 0, i32 %28, i32 1)
  %30 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @sftr, align 4
  %34 = call i32 @MLXSW_REG(i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @mlxsw_reg_write(i32 %32, i32 %34, i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %126

43:                                               ; preds = %25
  %44 = load i32, i32* @MLXSW_REG_SFGC_TYPE_UNKNOWN_UNICAST, align 4
  %45 = load i32, i32* @MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID, align 4
  %46 = load i32, i32* @MLXSW_REG_SFGC_TABLE_TYPE_SINGLE, align 4
  %47 = call i32 @mlxsw_reg_sfgc_pack(i8* %13, i32 %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @sfgc, align 4
  %52 = call i32 @MLXSW_REG(i32 %51)
  %53 = call i32 @mlxsw_reg_write(i32 %50, i32 %52, i8* %13)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %126

58:                                               ; preds = %43
  %59 = load i32, i32* @MLXSW_REG_SFGC_TYPE_BROADCAST, align 4
  %60 = load i32, i32* @MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID, align 4
  %61 = load i32, i32* @MLXSW_REG_SFGC_TABLE_TYPE_SINGLE, align 4
  %62 = call i32 @mlxsw_reg_sfgc_pack(i8* %13, i32 %59, i32 %60, i32 %61, i32 0)
  %63 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %64 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @sfgc, align 4
  %67 = call i32 @MLXSW_REG(i32 %66)
  %68 = call i32 @mlxsw_reg_write(i32 %65, i32 %67, i8* %13)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %126

73:                                               ; preds = %58
  %74 = load i32, i32* @MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_NON_IP, align 4
  %75 = load i32, i32* @MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID, align 4
  %76 = load i32, i32* @MLXSW_REG_SFGC_TABLE_TYPE_SINGLE, align 4
  %77 = call i32 @mlxsw_reg_sfgc_pack(i8* %13, i32 %74, i32 %75, i32 %76, i32 0)
  %78 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %79 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @sfgc, align 4
  %82 = call i32 @MLXSW_REG(i32 %81)
  %83 = call i32 @mlxsw_reg_write(i32 %80, i32 %82, i8* %13)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %126

88:                                               ; preds = %73
  %89 = load i32, i32* @MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV6, align 4
  %90 = load i32, i32* @MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID, align 4
  %91 = load i32, i32* @MLXSW_REG_SFGC_TABLE_TYPE_SINGLE, align 4
  %92 = call i32 @mlxsw_reg_sfgc_pack(i8* %13, i32 %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @sfgc, align 4
  %97 = call i32 @MLXSW_REG(i32 %96)
  %98 = call i32 @mlxsw_reg_write(i32 %95, i32 %97, i8* %13)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %126

103:                                              ; preds = %88
  %104 = load i32, i32* @MLXSW_REG_SFGC_TYPE_UNREGISTERED_MULTICAST_IPV4, align 4
  %105 = load i32, i32* @MLXSW_REG_SFGC_BRIDGE_TYPE_1Q_FID, align 4
  %106 = load i32, i32* @MLXSW_REG_SFGC_TABLE_TYPE_SINGLE, align 4
  %107 = call i32 @mlxsw_reg_sfgc_pack(i8* %13, i32 %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %109 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @sfgc, align 4
  %112 = call i32 @MLXSW_REG(i32 %111)
  %113 = call i32 @mlxsw_reg_write(i32 %110, i32 %112, i8* %13)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %126

118:                                              ; preds = %103
  %119 = call i32 @mlxsw_reg_sgcr_pack(i8* %16, i32 1)
  %120 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %3, align 8
  %121 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @sgcr, align 4
  %124 = call i32 @MLXSW_REG(i32 %123)
  %125 = call i32 @mlxsw_reg_write(i32 %122, i32 %124, i8* %16)
  store i32 %125, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %126

126:                                              ; preds = %118, %116, %101, %86, %71, %56, %41, %22
  %127 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @mlxsw_reg_sftr_pack(i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @mlxsw_reg_sfgc_pack(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @mlxsw_reg_sgcr_pack(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
