; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_get_wrdd_regulatory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_get_wrdd_regulatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.acpi_buffer = type { i32, i32*, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WRD_METHOD = common dso_local global i64 0, align 8
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to get wrd method %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to call wrdc %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"regulatory hint from WRDD (alpha2-code): %s\0A\00", align 1
@COUNTRY_ERD_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32*)* @ath10k_mac_get_wrdd_regulatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_get_wrdd_regulatory(%struct.ath10k* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = bitcast %struct.acpi_buffer* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %14 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %14, i32* %13, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ACPI_HANDLE(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %95

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* @WRD_METHOD, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @acpi_get_handle(i32 %25, i32 %27, i32* %7)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @ACPI_FAILURE(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %34 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @ath10k_dbg(%struct.ath10k* %33, i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %95

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @acpi_evaluate_object(i32 %40, i32* null, i32* null, %struct.acpi_buffer* %8)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @ACPI_FAILURE(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @ath10k_dbg(%struct.ath10k* %46, i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %95

52:                                               ; preds = %39
  %53 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ath10k_mac_wrdd_get_mcc(%struct.ath10k* %53, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kfree(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %95

65:                                               ; preds = %52
  %66 = load i32, i32* %10, align 4
  %67 = ashr i32 %66, 8
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 %69, i8* %70, align 1
  %71 = load i32, i32* %10, align 4
  %72 = ashr i32 %71, 0
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  store i8 %74, i8* %75, align 1
  %76 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %76, align 1
  %77 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %78 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %79 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %80 = call i32 @ath10k_dbg(%struct.ath10k* %77, i32 %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %82 = call i32 @ath_regd_find_country_by_name(i8* %81)
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 65535
  br i1 %86, label %87, label %90

87:                                               ; preds = %65
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %95

90:                                               ; preds = %65
  %91 = load i32, i32* @COUNTRY_ERD_FLAG, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %87, %62, %45, %32, %21
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ACPI_HANDLE(i32) #2

declare dso_local i8* @acpi_get_handle(i32, i32, i32*) #2

declare dso_local i64 @ACPI_FAILURE(i8*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*) #2

declare dso_local i8* @acpi_evaluate_object(i32, i32*, i32*, %struct.acpi_buffer*) #2

declare dso_local i32 @ath10k_mac_wrdd_get_mcc(%struct.ath10k*, i32) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @ath_regd_find_country_by_name(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
