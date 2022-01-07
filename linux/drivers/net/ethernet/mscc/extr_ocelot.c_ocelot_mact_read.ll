; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_mact_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_mact_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { i32, %struct.ocelot* }
%struct.ocelot = type { i32 }
%struct.ocelot_mact_entry = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ANA_TABLES_MACTINDX_M_INDEX = common dso_local global i32 0, align 4
@ANA_TABLES_MACTINDX_BUCKET = common dso_local global i32 0, align 4
@MACACCESS_CMD_READ = common dso_local global i32 0, align 4
@ANA_TABLES_MACACCESS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ANA_TABLES_MACACCESS_VALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ANA_TABLES_MACACCESS_DEST_IDX_M = common dso_local global i32 0, align 4
@ANA_TABLES_MACLDATA = common dso_local global i32 0, align 4
@ANA_TABLES_MACHDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot_port*, i32, i32, %struct.ocelot_mact_entry*)* @ocelot_mact_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_mact_read(%struct.ocelot_port* %0, i32 %1, i32 %2, %struct.ocelot_mact_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocelot_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocelot_mact_entry*, align 8
  %10 = alloca %struct.ocelot*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ocelot_port* %0, %struct.ocelot_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ocelot_mact_entry* %3, %struct.ocelot_mact_entry** %9, align 8
  %18 = load %struct.ocelot_port*, %struct.ocelot_port** %6, align 8
  %19 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %18, i32 0, i32 1
  %20 = load %struct.ocelot*, %struct.ocelot** %19, align 8
  store %struct.ocelot* %20, %struct.ocelot** %10, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  %26 = load i32, i32* @ANA_TABLES_MACTINDX_M_INDEX, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ocelot_field_write(%struct.ocelot* %25, i32 %26, i32 %27)
  %29 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  %30 = load i32, i32* @ANA_TABLES_MACTINDX_BUCKET, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ocelot_field_write(%struct.ocelot* %29, i32 %30, i32 %31)
  %33 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  %34 = load i32, i32* @MACACCESS_CMD_READ, align 4
  %35 = call i32 @ANA_TABLES_MACACCESS_MAC_TABLE_CMD(i32 %34)
  %36 = load i32, i32* @ANA_TABLES_MACACCESS, align 4
  %37 = call i32 @ocelot_write(%struct.ocelot* %33, i32 %35, i32 %36)
  %38 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  %39 = call i64 @ocelot_mact_wait_for_completion(%struct.ocelot* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

44:                                               ; preds = %4
  %45 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  %46 = load i32, i32* @ANA_TABLES_MACACCESS, align 4
  %47 = call i32 @ocelot_read(%struct.ocelot* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @ANA_TABLES_MACACCESS_VALID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

55:                                               ; preds = %44
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @ANA_TABLES_MACACCESS_DEST_IDX_M, align 4
  %58 = and i32 %56, %57
  %59 = ashr i32 %58, 3
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.ocelot_port*, %struct.ocelot_port** %6, align 8
  %62 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

68:                                               ; preds = %55
  %69 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  %70 = load i32, i32* @ANA_TABLES_MACLDATA, align 4
  %71 = call i32 @ocelot_read(%struct.ocelot* %69, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load %struct.ocelot*, %struct.ocelot** %10, align 8
  %73 = load i32, i32* @ANA_TABLES_MACHDATA, align 4
  %74 = call i32 @ocelot_read(%struct.ocelot* %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %78, i8* %79, align 16
  %80 = load i32, i32* %16, align 4
  %81 = ashr i32 %80, 0
  %82 = and i32 %81, 255
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %83, i8* %84, align 1
  %85 = load i32, i32* %15, align 4
  %86 = ashr i32 %85, 24
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %88, i8* %89, align 2
  %90 = load i32, i32* %15, align 4
  %91 = ashr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds i8, i8* %24, i64 3
  store i8 %93, i8* %94, align 1
  %95 = load i32, i32* %15, align 4
  %96 = ashr i32 %95, 8
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds i8, i8* %24, i64 4
  store i8 %98, i8* %99, align 4
  %100 = load i32, i32* %15, align 4
  %101 = ashr i32 %100, 0
  %102 = and i32 %101, 255
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds i8, i8* %24, i64 5
  store i8 %103, i8* %104, align 1
  %105 = load i32, i32* %16, align 4
  %106 = ashr i32 %105, 16
  %107 = and i32 %106, 4095
  %108 = load %struct.ocelot_mact_entry*, %struct.ocelot_mact_entry** %9, align 8
  %109 = getelementptr inbounds %struct.ocelot_mact_entry, %struct.ocelot_mact_entry* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ocelot_mact_entry*, %struct.ocelot_mact_entry** %9, align 8
  %111 = getelementptr inbounds %struct.ocelot_mact_entry, %struct.ocelot_mact_entry* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ether_addr_copy(i32 %112, i8* %24)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %114

114:                                              ; preds = %68, %65, %52, %41
  %115 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ocelot_field_write(%struct.ocelot*, i32, i32) #2

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #2

declare dso_local i32 @ANA_TABLES_MACACCESS_MAC_TABLE_CMD(i32) #2

declare dso_local i64 @ocelot_mact_wait_for_completion(%struct.ocelot*) #2

declare dso_local i32 @ocelot_read(%struct.ocelot*, i32) #2

declare dso_local i32 @ether_addr_copy(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
