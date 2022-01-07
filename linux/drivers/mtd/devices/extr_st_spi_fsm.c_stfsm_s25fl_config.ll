; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_s25fl_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_s25fl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.flash_info* }
%struct.TYPE_2__ = type { i32 }
%struct.flash_info = type { i32, i32, i32 }

@FLASH_FLAG_32BIT_ADDR = common dso_local global i32 0, align 4
@stfsm_s25fl_read4_configs = common dso_local global i32 0, align 4
@stfsm_s25fl_write4_configs = common dso_local global i32 0, align 4
@stfsm_seq_erase_sector = common dso_local global i32 0, align 4
@FLASH_FLAG_DYB_LOCKING = common dso_local global i32 0, align 4
@SPINOR_OP_RDCR = common dso_local global i32 0, align 4
@STFSM_S25FL_CONFIG_QE = common dso_local global i32 0, align 4
@SPINOR_OP_RDSR = common dso_local global i32 0, align 4
@SPINOR_OP_WRSR = common dso_local global i32 0, align 4
@CFG_S25FL_CHECK_ERROR_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*)* @stfsm_s25fl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_s25fl_config(%struct.stfsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca %struct.flash_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  %14 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %15 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %14, i32 0, i32 3
  %16 = load %struct.flash_info*, %struct.flash_info** %15, align 8
  store %struct.flash_info* %16, %struct.flash_info** %4, align 8
  %17 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %18 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FLASH_FLAG_32BIT_ADDR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %1
  %25 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %26 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %27 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %26, i32 0, i32 1
  %28 = load i32, i32* @stfsm_s25fl_read4_configs, align 4
  %29 = call i32 @stfsm_search_prepare_rw_seq(%struct.stfsm* %25, %struct.TYPE_2__* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %2, align 4
  br label %161

34:                                               ; preds = %24
  %35 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %36 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %37 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %36, i32 0, i32 2
  %38 = load i32, i32* @stfsm_s25fl_write4_configs, align 4
  %39 = call i32 @stfsm_search_prepare_rw_seq(%struct.stfsm* %35, %struct.TYPE_2__* %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %2, align 4
  br label %161

44:                                               ; preds = %34
  %45 = call i32 @stfsm_s25fl_prepare_erasesec_seq_32(i32* @stfsm_seq_erase_sector)
  br label %54

46:                                               ; preds = %1
  %47 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %48 = call i32 @stfsm_prepare_rwe_seqs_default(%struct.stfsm* %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %2, align 4
  br label %161

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @FLASH_FLAG_DYB_LOCKING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %106

59:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %104, %59
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %63 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %66 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = icmp slt i32 %61, %68
  br i1 %69, label %70, label %105

70:                                               ; preds = %60
  %71 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @stfsm_s25fl_read_dyb(%struct.stfsm* %71, i32 %72, i32* %11)
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @stfsm_s25fl_write_dyb(%struct.stfsm* %77, i32 %78, i32 255)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %83 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 2
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %98, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %90 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %93 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 4
  %96 = sub nsw i32 %91, %95
  %97 = icmp sge i32 %88, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %87, %80
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 4096
  store i32 %100, i32* %7, align 4
  br label %104

101:                                              ; preds = %87
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 65536
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %60

105:                                              ; preds = %60
  br label %106

106:                                              ; preds = %105, %54
  %107 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %108 = load i32, i32* @SPINOR_OP_RDCR, align 4
  %109 = call i32 @stfsm_read_status(%struct.stfsm* %107, i32 %108, i32* %10, i32 1)
  %110 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %111 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 16
  %115 = and i32 %114, 3
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %129

119:                                              ; preds = %106
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @STFSM_S25FL_CONFIG_QE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @STFSM_S25FL_CONFIG_QE, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %128

128:                                              ; preds = %124, %119
  br label %140

129:                                              ; preds = %106
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @STFSM_S25FL_CONFIG_QE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32, i32* @STFSM_S25FL_CONFIG_QE, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %10, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %139

139:                                              ; preds = %134, %129
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %145 = load i32, i32* @SPINOR_OP_RDSR, align 4
  %146 = call i32 @stfsm_read_status(%struct.stfsm* %144, i32 %145, i32* %9, i32 1)
  %147 = load i32, i32* %10, align 4
  %148 = shl i32 %147, 8
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %8, align 4
  %151 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %152 = load i32, i32* @SPINOR_OP_WRSR, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @stfsm_write_status(%struct.stfsm* %151, i32 %152, i32 %153, i32 2, i32 1)
  br label %155

155:                                              ; preds = %143, %140
  %156 = load i32, i32* @CFG_S25FL_CHECK_ERROR_FLAGS, align 4
  %157 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %158 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %51, %42, %32
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @stfsm_search_prepare_rw_seq(%struct.stfsm*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @stfsm_s25fl_prepare_erasesec_seq_32(i32*) #1

declare dso_local i32 @stfsm_prepare_rwe_seqs_default(%struct.stfsm*) #1

declare dso_local i32 @stfsm_s25fl_read_dyb(%struct.stfsm*, i32, i32*) #1

declare dso_local i32 @stfsm_s25fl_write_dyb(%struct.stfsm*, i32, i32) #1

declare dso_local i32 @stfsm_read_status(%struct.stfsm*, i32, i32*, i32) #1

declare dso_local i32 @stfsm_write_status(%struct.stfsm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
