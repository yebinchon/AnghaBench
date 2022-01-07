; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_read_rr_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_read_rr_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.hynix_read_retry_otp = type { i32, i32*, i32, i32, i32* }

@NAND_HYNIX_CMD_SET_PARAMS = common dso_local global i32 0, align 4
@NAND_HYNIX_CMD_APPLY_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.hynix_read_retry_otp*, i8*)* @hynix_read_rr_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hynix_read_rr_otp(%struct.nand_chip* %0, %struct.hynix_read_retry_otp* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.hynix_read_retry_otp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.hynix_read_retry_otp* %1, %struct.hynix_read_retry_otp** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = call i32 @nand_reset_op(%struct.nand_chip* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %132

16:                                               ; preds = %3
  %17 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %18 = load i32, i32* @NAND_HYNIX_CMD_SET_PARAMS, align 4
  %19 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %132

24:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %53, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %6, align 8
  %28 = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %33 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %6, align 8
  %34 = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %6, align 8
  %41 = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hynix_nand_reg_write_op(%struct.nand_chip* %32, i32 %39, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %132

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %25

56:                                               ; preds = %25
  %57 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %58 = load i32, i32* @NAND_HYNIX_CMD_APPLY_PARAMS, align 4
  %59 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %132

64:                                               ; preds = %56
  %65 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %66 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %65, i32 23)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %132

71:                                               ; preds = %64
  %72 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %73 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %72, i32 4)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %132

78:                                               ; preds = %71
  %79 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %80 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %79, i32 25)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %132

85:                                               ; preds = %78
  %86 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %87 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %6, align 8
  %88 = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %6, align 8
  %92 = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @nand_read_page_op(%struct.nand_chip* %86, i32 %89, i32 0, i8* %90, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %132

99:                                               ; preds = %85
  %100 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %101 = call i32 @nand_reset_op(%struct.nand_chip* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %132

106:                                              ; preds = %99
  %107 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %108 = load i32, i32* @NAND_HYNIX_CMD_SET_PARAMS, align 4
  %109 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %132

114:                                              ; preds = %106
  %115 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %116 = call i32 @hynix_nand_reg_write_op(%struct.nand_chip* %115, i32 56, i32 0)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %4, align 4
  br label %132

121:                                              ; preds = %114
  %122 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %123 = load i32, i32* @NAND_HYNIX_CMD_APPLY_PARAMS, align 4
  %124 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %4, align 4
  br label %132

129:                                              ; preds = %121
  %130 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %131 = call i32 @nand_read_page_op(%struct.nand_chip* %130, i32 0, i32 0, i8* null, i32 0)
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %129, %127, %119, %112, %104, %97, %83, %76, %69, %62, %50, %22, %14
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @nand_reset_op(%struct.nand_chip*) #1

declare dso_local i32 @hynix_nand_cmd_op(%struct.nand_chip*, i32) #1

declare dso_local i32 @hynix_nand_reg_write_op(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
