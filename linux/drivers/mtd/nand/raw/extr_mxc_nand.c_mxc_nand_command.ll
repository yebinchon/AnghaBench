; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.mxc_nand_host = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mtd_info*, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*)*, i32 (%struct.mtd_info*)* }

@.str = private unnamed_addr constant [56 x i8] c"mxc_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Unexpected column/row value (cmd=%u, col=%d, row=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Unexpected column value (cmd=%u, col=%d)\0A\00", align 1
@NFC_OUTPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unimplemented command (cmd=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @mxc_nand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_nand_command(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.mxc_nand_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %9, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %13)
  store %struct.mxc_nand_host* %14, %struct.mxc_nand_host** %10, align 8
  %15 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %16 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %23 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %141 [
    i32 129, label %25
    i32 128, label %41
    i32 130, label %70
    i32 133, label %92
    i32 132, label %92
    i32 131, label %111
  ]

25:                                               ; preds = %4
  %26 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %27 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32 (%struct.mtd_info*)*, i32 (%struct.mtd_info*)** %29, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %32 = call i32 %30(%struct.mtd_info* %31)
  %33 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %34 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %36, align 8
  %38 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 %37(%struct.mxc_nand_host* %38, i32 %39, i32 0)
  br label %144

41:                                               ; preds = %4
  %42 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %43 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %45 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %47 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %49, align 8
  %51 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 %50(%struct.mxc_nand_host* %51, i32 %52, i32 1)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %59, label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, -1
  br label %59

59:                                               ; preds = %56, %41
  %60 = phi i1 [ true, %41 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i8*, i32, ...) @WARN_ONCE(i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %66, i32 %67, i32 %68)
  br label %144

70:                                               ; preds = %4
  %71 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %72 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %74, align 8
  %76 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 %75(%struct.mxc_nand_host* %76, i32 %77, i32 1)
  %79 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %79, i32 %80, i32 %81)
  %83 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %84 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32 (%struct.mxc_nand_host*)*, i32 (%struct.mxc_nand_host*)** %86, align 8
  %88 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %89 = call i32 %87(%struct.mxc_nand_host* %88)
  %90 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %91 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %144

92:                                               ; preds = %4, %4
  %93 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %94 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %96, align 8
  %98 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 %97(%struct.mxc_nand_host* %98, i32 %99, i32 0)
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, -1
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32, i8*, i32, ...) @WARN_ONCE(i32 %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %107, i32 %108, i32 %109)
  br label %144

111:                                              ; preds = %4
  %112 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %113 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %112, i32 0, i32 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %115, align 8
  %117 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 %116(%struct.mxc_nand_host* %117, i32 %118, i32 0)
  %120 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %120, i32 %121, i32 %122)
  %124 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %125 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %124, i32 0, i32 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32 (%struct.mtd_info*, i32)*, i32 (%struct.mtd_info*, i32)** %127, align 8
  %129 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %130 = load i32, i32* @NFC_OUTPUT, align 4
  %131 = call i32 %128(%struct.mtd_info* %129, i32 %130)
  %132 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %133 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %136 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @memcpy32_fromio(i32 %134, i32 %137, i32 512)
  %139 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %140 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  br label %144

141:                                              ; preds = %4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 (i32, i8*, i32, ...) @WARN_ONCE(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %111, %92, %70, %59, %25
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, ...) #1

declare dso_local i32 @mxc_do_addr_cycle(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @memcpy32_fromio(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
