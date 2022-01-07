; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { %struct.ofdpa* }
%struct.ofdpa = type { i32, i32 }
%struct.ofdpa_fdb_tbl_entry = type { i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.ofdpa_port* }

@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OFDPA_OP_FLAG_LEARNED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@OFDPA_OP_FLAG_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i8*, i32, i32)* @ofdpa_port_fdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_fdb(%struct.ofdpa_port* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ofdpa*, align 8
  %11 = alloca %struct.ofdpa_fdb_tbl_entry*, align 8
  %12 = alloca %struct.ofdpa_fdb_tbl_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %16 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %15, i32 0, i32 0
  %17 = load %struct.ofdpa*, %struct.ofdpa** %16, align 8
  store %struct.ofdpa* %17, %struct.ofdpa** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ofdpa_fdb_tbl_entry* @kzalloc(i32 40, i32 %21)
  store %struct.ofdpa_fdb_tbl_entry* %22, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %23 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %24 = icmp ne %struct.ofdpa_fdb_tbl_entry* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %125

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @OFDPA_OP_FLAG_LEARNED, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %33 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @jiffies, align 8
  %35 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %36 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %38 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %39 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store %struct.ofdpa_port* %37, %struct.ofdpa_port** %40, align 8
  %41 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %42 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @ether_addr_copy(i32 %44, i8* %45)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %49 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %52 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %51, i32 0, i32 4
  %53 = call i32 @crc32(i32 -1, %struct.TYPE_2__* %52, i32 16)
  %54 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %55 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %57 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %56, i32 0, i32 0
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %61 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %62 = call %struct.ofdpa_fdb_tbl_entry* @ofdpa_fdb_tbl_find(%struct.ofdpa* %60, %struct.ofdpa_fdb_tbl_entry* %61)
  store %struct.ofdpa_fdb_tbl_entry* %62, %struct.ofdpa_fdb_tbl_entry** %12, align 8
  %63 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %12, align 8
  %64 = icmp ne %struct.ofdpa_fdb_tbl_entry* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %28
  %66 = load i8*, i8** @jiffies, align 8
  %67 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %12, align 8
  %68 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %73 = call i32 @kfree(%struct.ofdpa_fdb_tbl_entry* %72)
  %74 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %12, align 8
  %75 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %74, i32 0, i32 2
  %76 = call i32 @hash_del(i32* %75)
  br label %77

77:                                               ; preds = %71, %65
  br label %92

78:                                               ; preds = %28
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %83 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %86 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %85, i32 0, i32 2
  %87 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %88 = getelementptr inbounds %struct.ofdpa_fdb_tbl_entry, %struct.ofdpa_fdb_tbl_entry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @hash_add(i32 %84, i32* %86, i32 %89)
  br label %91

91:                                               ; preds = %81, %78
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %94 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %93, i32 0, i32 0
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %12, align 8
  %98 = icmp ne %struct.ofdpa_fdb_tbl_entry* %97, null
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = icmp ne i32 %100, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %92
  %107 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %11, align 8
  %108 = call i32 @kfree(%struct.ofdpa_fdb_tbl_entry* %107)
  %109 = load %struct.ofdpa_fdb_tbl_entry*, %struct.ofdpa_fdb_tbl_entry** %12, align 8
  %110 = icmp ne %struct.ofdpa_fdb_tbl_entry* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %125

115:                                              ; preds = %111, %106
  %116 = load i32, i32* @OFDPA_OP_FLAG_REFRESH, align 4
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %115, %92
  %120 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @ofdpa_port_fdb_learn(%struct.ofdpa_port* %120, i32 %121, i8* %122, i32 %123)
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %114, %25
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.ofdpa_fdb_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @crc32(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_fdb_tbl_entry* @ofdpa_fdb_tbl_find(%struct.ofdpa*, %struct.ofdpa_fdb_tbl_entry*) #1

declare dso_local i32 @kfree(%struct.ofdpa_fdb_tbl_entry*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ofdpa_port_fdb_learn(%struct.ofdpa_port*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
