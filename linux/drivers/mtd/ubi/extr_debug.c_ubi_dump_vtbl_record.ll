; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_vtbl_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_vtbl_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vtbl_record = type { i8*, i32, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Volume table record %d dump:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\09reserved_pebs   %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09alignment       %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\09data_pad        %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\09vol_type        %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09upd_marker      %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\09name_len        %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\09name            NULL\0A\00", align 1
@UBI_VOL_NAME_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"\09name            %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\091st 5 characters of name: %c%c%c%c%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\09crc             %#08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_dump_vtbl_record(%struct.ubi_vtbl_record* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_vtbl_record*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubi_vtbl_record* %0, %struct.ubi_vtbl_record** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %7 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @be16_to_cpu(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %13 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @be32_to_cpu(i32 %14)
  %16 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %18 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @be32_to_cpu(i32 %19)
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %23 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @be32_to_cpu(i32 %24)
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %28 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %33 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %40 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %106

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @UBI_VOL_NAME_MAX, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %54 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @strnlen(i8* %56, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %64 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %66)
  br label %100

68:                                               ; preds = %52, %48
  %69 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %70 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %76 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %82 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %88 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %94 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %74, i32 %80, i32 %86, i32 %92, i32 %98)
  br label %100

100:                                              ; preds = %68, %62
  %101 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %3, align 8
  %102 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @be32_to_cpu(i32 %103)
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %100, %46
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
