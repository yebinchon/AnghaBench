; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.bnx2 = type { i32, %struct.flash_spec* }

@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@flash_5709 = common dso_local global %struct.flash_spec zeroinitializer, align 4
@BNX2_NVM_CFG1 = common dso_local global i32 0, align 4
@flash_table = common dso_local global %struct.flash_spec* null, align 8
@FLASH_BACKUP_STRAP_MASK = common dso_local global i32 0, align 4
@FLASH_STRAP_MASK = common dso_local global i32 0, align 4
@BNX2_NVM_CFG2 = common dso_local global i32 0, align 4
@BNX2_NVM_CFG3 = common dso_local global i32 0, align 4
@BNX2_NVM_WRITE1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown flash/EEPROM type\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BNX2_SHARED_HW_CFG_CONFIG2 = common dso_local global i32 0, align 4
@BNX2_SHARED_HW_CFG2_NVM_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_init_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_init_nvram(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.flash_spec*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %11 = call i64 @BNX2_CHIP(%struct.bnx2* %10)
  %12 = load i64, i64* @BNX2_CHIP_5709, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 1
  store %struct.flash_spec* @flash_5709, %struct.flash_spec** %16, align 8
  br label %137

17:                                               ; preds = %1
  %18 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %19 = load i32, i32* @BNX2_NVM_CFG1, align 4
  %20 = call i32 @BNX2_RD(%struct.bnx2* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.flash_spec*, %struct.flash_spec** @flash_table, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.flash_spec* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 1073741824
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  %27 = load %struct.flash_spec*, %struct.flash_spec** @flash_table, align 8
  %28 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %27, i64 0
  store %struct.flash_spec* %28, %struct.flash_spec** %8, align 8
  br label %29

29:                                               ; preds = %48, %26
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @FLASH_BACKUP_STRAP_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %38 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FLASH_BACKUP_STRAP_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %45 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %45, i32 0, i32 1
  store %struct.flash_spec* %44, %struct.flash_spec** %46, align 8
  br label %53

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %52 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %51, i32 1
  store %struct.flash_spec* %52, %struct.flash_spec** %8, align 8
  br label %29

53:                                               ; preds = %43, %29
  br label %126

54:                                               ; preds = %17
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 8388608
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @FLASH_BACKUP_STRAP_MASK, align 4
  store i32 %59, i32* %9, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @FLASH_STRAP_MASK, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %58
  store i32 0, i32* %5, align 4
  %63 = load %struct.flash_spec*, %struct.flash_spec** @flash_table, align 8
  %64 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %63, i64 0
  store %struct.flash_spec* %64, %struct.flash_spec** %8, align 8
  br label %65

65:                                               ; preds = %120, %62
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %125

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %74 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %119

79:                                               ; preds = %69
  %80 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %81 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %82 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %81, i32 0, i32 1
  store %struct.flash_spec* %80, %struct.flash_spec** %82, align 8
  %83 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %84 = call i32 @bnx2_acquire_nvram_lock(%struct.bnx2* %83)
  store i32 %84, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %160

88:                                               ; preds = %79
  %89 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %90 = call i32 @bnx2_enable_nvram_access(%struct.bnx2* %89)
  %91 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %92 = load i32, i32* @BNX2_NVM_CFG1, align 4
  %93 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %94 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @BNX2_WR(%struct.bnx2* %91, i32 %92, i32 %95)
  %97 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %98 = load i32, i32* @BNX2_NVM_CFG2, align 4
  %99 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %100 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @BNX2_WR(%struct.bnx2* %97, i32 %98, i32 %101)
  %103 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %104 = load i32, i32* @BNX2_NVM_CFG3, align 4
  %105 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %106 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @BNX2_WR(%struct.bnx2* %103, i32 %104, i32 %107)
  %109 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %110 = load i32, i32* @BNX2_NVM_WRITE1, align 4
  %111 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %112 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @BNX2_WR(%struct.bnx2* %109, i32 %110, i32 %113)
  %115 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %116 = call i32 @bnx2_disable_nvram_access(%struct.bnx2* %115)
  %117 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %118 = call i32 @bnx2_release_nvram_lock(%struct.bnx2* %117)
  br label %125

119:                                              ; preds = %69
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  %123 = load %struct.flash_spec*, %struct.flash_spec** %8, align 8
  %124 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %123, i32 1
  store %struct.flash_spec* %124, %struct.flash_spec** %8, align 8
  br label %65

125:                                              ; preds = %88, %65
  br label %126

126:                                              ; preds = %125, %53
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %132 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %131, i32 0, i32 1
  store %struct.flash_spec* null, %struct.flash_spec** %132, align 8
  %133 = call i32 @pr_alert(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %160

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %14
  %138 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %139 = load i32, i32* @BNX2_SHARED_HW_CFG_CONFIG2, align 4
  %140 = call i32 @bnx2_shmem_rd(%struct.bnx2* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* @BNX2_SHARED_HW_CFG2_NVM_SIZE_MASK, align 4
  %142 = load i32, i32* %4, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %149 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %158

150:                                              ; preds = %137
  %151 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %152 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %151, i32 0, i32 1
  %153 = load %struct.flash_spec*, %struct.flash_spec** %152, align 8
  %154 = getelementptr inbounds %struct.flash_spec, %struct.flash_spec* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %157 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %150, %146
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %130, %86
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.flash_spec*) #1

declare dso_local i32 @bnx2_acquire_nvram_lock(%struct.bnx2*) #1

declare dso_local i32 @bnx2_enable_nvram_access(%struct.bnx2*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_disable_nvram_access(%struct.bnx2*) #1

declare dso_local i32 @bnx2_release_nvram_lock(%struct.bnx2*) #1

declare dso_local i32 @pr_alert(i8*) #1

declare dso_local i32 @bnx2_shmem_rd(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
