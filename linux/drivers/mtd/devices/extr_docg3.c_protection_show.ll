; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_protection_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_protection_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.docg3 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DOC_PROTECTION = common dso_local global i32 0, align 4
@DOC_DPS0_STATUS = common dso_local global i32 0, align 4
@DOC_DPS0_ADDRLOW = common dso_local global i32 0, align 4
@DOC_DPS0_ADDRHIGH = common dso_local global i32 0, align 4
@DOC_DPS1_STATUS = common dso_local global i32 0, align 4
@DOC_DPS1_ADDRLOW = common dso_local global i32 0, align 4
@DOC_DPS1_ADDRHIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Protection = 0x%02x (\00", align 1
@DOC_PROTECT_FOUNDRY_OTP_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"FOUNDRY_OTP_LOCK,\00", align 1
@DOC_PROTECT_CUSTOMER_OTP_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"CUSTOMER_OTP_LOCK,\00", align 1
@DOC_PROTECT_LOCK_INPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"LOCK_INPUT,\00", align 1
@DOC_PROTECT_STICKY_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"STICKY_LOCK,\00", align 1
@DOC_PROTECT_PROTECTION_ENABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"PROTECTION ON,\00", align 1
@DOC_PROTECT_IPL_DOWNLOAD_LOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"IPL_DOWNLOAD_LOCK,\00", align 1
@DOC_PROTECT_PROTECTION_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"PROTECT_ERR,\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"NO_PROTECT_ERR\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.10 = private unnamed_addr constant [97 x i8] c"DPS0 = 0x%02x : Protected area [0x%x - 0x%x] : OTP=%d, READ=%d, WRITE=%d, HW_LOCK=%d, KEY_OK=%d\0A\00", align 1
@DOC_DPS_OTP_PROTECTED = common dso_local global i32 0, align 4
@DOC_DPS_READ_PROTECTED = common dso_local global i32 0, align 4
@DOC_DPS_WRITE_PROTECTED = common dso_local global i32 0, align 4
@DOC_DPS_HW_LOCK_ENABLED = common dso_local global i32 0, align 4
@DOC_DPS_KEY_OK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [97 x i8] c"DPS1 = 0x%02x : Protected area [0x%x - 0x%x] : OTP=%d, READ=%d, WRITE=%d, HW_LOCK=%d, KEY_OK=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @protection_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protection_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.docg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.docg3*
  store %struct.docg3* %16, %struct.docg3** %5, align 8
  %17 = load %struct.docg3*, %struct.docg3** %5, align 8
  %18 = getelementptr inbounds %struct.docg3, %struct.docg3* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.docg3*, %struct.docg3** %5, align 8
  %23 = load i32, i32* @DOC_PROTECTION, align 4
  %24 = call i32 @doc_register_readb(%struct.docg3* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.docg3*, %struct.docg3** %5, align 8
  %26 = load i32, i32* @DOC_DPS0_STATUS, align 4
  %27 = call i32 @doc_register_readb(%struct.docg3* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.docg3*, %struct.docg3** %5, align 8
  %29 = load i32, i32* @DOC_DPS0_ADDRLOW, align 4
  %30 = call i32 @doc_register_readw(%struct.docg3* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.docg3*, %struct.docg3** %5, align 8
  %32 = load i32, i32* @DOC_DPS0_ADDRHIGH, align 4
  %33 = call i32 @doc_register_readw(%struct.docg3* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.docg3*, %struct.docg3** %5, align 8
  %35 = load i32, i32* @DOC_DPS1_STATUS, align 4
  %36 = call i32 @doc_register_readb(%struct.docg3* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.docg3*, %struct.docg3** %5, align 8
  %38 = load i32, i32* @DOC_DPS1_ADDRLOW, align 4
  %39 = call i32 @doc_register_readw(%struct.docg3* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.docg3*, %struct.docg3** %5, align 8
  %41 = load i32, i32* @DOC_DPS1_ADDRHIGH, align 4
  %42 = call i32 @doc_register_readw(%struct.docg3* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.docg3*, %struct.docg3** %5, align 8
  %44 = getelementptr inbounds %struct.docg3, %struct.docg3* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DOC_PROTECT_FOUNDRY_OTP_LOCK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %2
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %2
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DOC_PROTECT_CUSTOMER_OTP_LOCK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = call i32 @seq_puts(%struct.seq_file* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @DOC_PROTECT_LOCK_INPUT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 @seq_puts(%struct.seq_file* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @DOC_PROTECT_STICKY_LOCK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @DOC_PROTECT_PROTECTION_ENABLED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = call i32 @seq_puts(%struct.seq_file* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @DOC_PROTECT_IPL_DOWNLOAD_LOCK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = call i32 @seq_puts(%struct.seq_file* %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @DOC_PROTECT_PROTECTION_ERROR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = call i32 @seq_puts(%struct.seq_file* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %109

106:                                              ; preds = %98
  %107 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %108 = call i32 @seq_puts(%struct.seq_file* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = call i32 @seq_puts(%struct.seq_file* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @DOC_DPS_OTP_PROTECTED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @DOC_DPS_READ_PROTECTED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @DOC_DPS_WRITE_PROTECTED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @DOC_DPS_HW_LOCK_ENABLED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @DOC_DPS_KEY_OK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.10, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %122, i32 %129, i32 %136, i32 %143, i32 %150)
  %152 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @DOC_DPS_OTP_PROTECTED, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @DOC_DPS_READ_PROTECTED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @DOC_DPS_WRITE_PROTECTED, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @DOC_DPS_HW_LOCK_ENABLED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @DOC_DPS_KEY_OK, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %152, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.11, i64 0, i64 0), i32 %153, i32 %154, i32 %155, i32 %162, i32 %169, i32 %176, i32 %183, i32 %190)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @doc_register_readb(%struct.docg3*, i32) #1

declare dso_local i32 @doc_register_readw(%struct.docg3*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
