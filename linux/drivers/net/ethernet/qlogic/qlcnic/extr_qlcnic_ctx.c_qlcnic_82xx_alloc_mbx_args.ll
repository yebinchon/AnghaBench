; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_alloc_mbx_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_alloc_mbx_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_mailbox_metadata = type { i64, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64*, i32 }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.qlcnic_adapter = type { i32 }

@qlcnic_mbx_tbl = common dso_local global %struct.qlcnic_mailbox_metadata* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_alloc_mbx_args(%struct.qlcnic_cmd_args* %0, %struct.qlcnic_adapter* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_mailbox_metadata*, align 8
  store %struct.qlcnic_cmd_args* %0, %struct.qlcnic_cmd_args** %5, align 8
  store %struct.qlcnic_adapter* %1, %struct.qlcnic_adapter** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** @qlcnic_mbx_tbl, align 8
  store %struct.qlcnic_mailbox_metadata* %11, %struct.qlcnic_mailbox_metadata** %10, align 8
  %12 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** @qlcnic_mbx_tbl, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.qlcnic_mailbox_metadata* %12)
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %98, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %101

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %20, i64 %22
  %24 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %97

27:                                               ; preds = %18
  %28 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %28, i64 %30
  %32 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %35 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.qlcnic_mailbox_metadata*, %struct.qlcnic_mailbox_metadata** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %37, i64 %39
  %41 = getelementptr inbounds %struct.qlcnic_mailbox_metadata, %struct.qlcnic_mailbox_metadata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %47 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call i8* @kcalloc(i32 %49, i32 8, i32 %50)
  %52 = bitcast i8* %51 to i64*
  %53 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %54 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64* %52, i64** %55, align 8
  %56 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %57 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %27
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %102

64:                                               ; preds = %27
  %65 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %66 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i8* @kcalloc(i32 %68, i32 8, i32 %69)
  %71 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %72 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %75 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %90, label %79

79:                                               ; preds = %64
  %80 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %81 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @kfree(i64* %83)
  %85 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %86 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64* null, i64** %87, align 8
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %102

90:                                               ; preds = %64
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %93 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 %91, i64* %96, align 8
  br label %101

97:                                               ; preds = %18
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %14

101:                                              ; preds = %90, %14
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %79, %61
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @ARRAY_SIZE(%struct.qlcnic_mailbox_metadata*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
