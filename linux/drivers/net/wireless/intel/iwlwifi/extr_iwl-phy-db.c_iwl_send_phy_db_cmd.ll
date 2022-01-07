; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_iwl_send_phy_db_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-phy-db.c_iwl_send_phy_db_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_phy_db = type { i32 }
%struct.iwl_phy_db_cmd = type { i8*, i8* }
%struct.iwl_host_cmd = type { i32*, i32*, %struct.iwl_phy_db_cmd**, i32 }

@PHY_DB_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Sending PHY-DB hcmd of type %d, of length %d\0A\00", align 1
@IWL_HCMD_DFL_NOCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_phy_db*, i32, i32, i8*)* @iwl_send_phy_db_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_phy_db_cmd(%struct.iwl_phy_db* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.iwl_phy_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iwl_phy_db_cmd, align 8
  %10 = alloca %struct.iwl_host_cmd, align 8
  store %struct.iwl_phy_db* %0, %struct.iwl_phy_db** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = bitcast %struct.iwl_host_cmd* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 3
  %13 = load i32, i32* @PHY_DB_CMD, align 4
  store i32 %13, i32* %12, align 8
  %14 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @IWL_DEBUG_INFO(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.iwl_phy_db_cmd, %struct.iwl_phy_db_cmd* %9, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = getelementptr inbounds %struct.iwl_phy_db_cmd, %struct.iwl_phy_db_cmd* %9, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 2
  %27 = load %struct.iwl_phy_db_cmd**, %struct.iwl_phy_db_cmd*** %26, align 8
  %28 = getelementptr inbounds %struct.iwl_phy_db_cmd*, %struct.iwl_phy_db_cmd** %27, i64 0
  store %struct.iwl_phy_db_cmd* %9, %struct.iwl_phy_db_cmd** %28, align 8
  %29 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 16, i32* %31, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to %struct.iwl_phy_db_cmd*
  %34 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 2
  %35 = load %struct.iwl_phy_db_cmd**, %struct.iwl_phy_db_cmd*** %34, align 8
  %36 = getelementptr inbounds %struct.iwl_phy_db_cmd*, %struct.iwl_phy_db_cmd** %35, i64 1
  store %struct.iwl_phy_db_cmd* %33, %struct.iwl_phy_db_cmd** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @IWL_HCMD_DFL_NOCOPY, align 4
  %42 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_phy_db, %struct.iwl_phy_db* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @iwl_trans_send_cmd(i32 %47, %struct.iwl_host_cmd* %10)
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IWL_DEBUG_INFO(i32, i8*, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @iwl_trans_send_cmd(i32, %struct.iwl_host_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
